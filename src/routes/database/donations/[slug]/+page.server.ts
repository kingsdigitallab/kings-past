import { getRecord, getRecordUrls } from '$lib/supabase';
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

		const urls = await getRecordUrls(source, slug);

		return {
			donation,
			title: donation.name,
			meta,
			description: description?.code,
			urls
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
