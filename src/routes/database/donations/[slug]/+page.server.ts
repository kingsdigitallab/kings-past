import {
	getDonationEntities,
	getRecord,
	getRecordMoments,
	getRecordSources,
	getRecordUrls
} from '$lib/supabase';
import type { Donation, Moment } from '$lib/types';
import { handleLoadError } from '$lib/errorHandling';
import { formatDonationDate } from '$lib';
import { compile } from 'mdsvex';

export async function load({ params, parent }) {
	const { slug } = params;

	try {
		const parentData = await parent();
		const placesBySlug = parentData.placesBySlug;

		const source = 'donation';
		const donation = (await getRecord(source, slug)) as Donation;

		const meta = {
			Date: formatDonationDate(donation),
			Location: donation?.location && placesBySlug[donation.location],
			Price: donation.price.toLocaleString(),
			Currency: donation.currency
		};

		const description = await compile(donation?.description || '');

		const donorsPerson = await getDonationEntities(slug);
		const donorsOrganisation = await getDonationEntities(slug, 'organisation');
		const recipientsPerson = await getDonationEntities(slug, 'person', 'recipient');
		const recipientsOrganisation = await getDonationEntities(slug, 'organisation', 'recipient');

		const sources = await getRecordSources(source, slug);
		const urls = await getRecordUrls(source, slug);

		const donationMoments = await getRecordMoments(source, slug);
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment: Moment) =>
			donationMoments?.some((dm) => parseInt(dm.moment) === moment.n)
		);

		return {
			_metadata: {
				title: donation.name,
				excerpt: `Explore the donation ${donation.name}`,
				tags: 'database, donations'
			},
			donation,
			title: donation.name,
			meta,
			description: description?.code,
			donorsPerson,
			donorsOrganisation,
			recipientsPerson,
			recipientsOrganisation,
			moments,
			sources,
			urls
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
