import { getDonationEntities, getRecord, getRecordSources, getRecordUrls } from '$lib/supabase';
import type { Donation } from '$lib/types';
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

		return {
			donation,
			title: donation.name,
			meta,
			description: description?.code,
			donorsPerson,
			donorsOrganisation,
			recipientsPerson,
			recipientsOrganisation,
			sources,
			urls
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
