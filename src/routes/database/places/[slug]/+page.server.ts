import { EMPTY_PLACEHOLDER } from '$lib/config';
import { handleLoadError } from '$lib/errorHandling';
import {
	getPlaceDonations,
	getPlaceEvents,
	getPlaceOrganisations,
	getRecord,
	getRecordFeature,
	getRecordMoments,
	getRecords,
	getRecordSources,
	getRecordUrls
} from '$lib/supabase';
import type { Moment, Place, PlaceMoment } from '$lib/types';
import { compile } from 'mdsvex';

export async function load({ params, parent }) {
	const { slug } = params;

	try {
		const source = 'place';
		const place = (await getRecord(source, slug)) as Place;

		const meta = {
			'Alternative names': place?.alternative_names || EMPTY_PLACEHOLDER
		};

		const description = await compile(place?.description || '');
		const donations = await getPlaceDonations(slug);
		const events = await getPlaceEvents(slug);
		const feature = await getRecordFeature(source, slug);
		const organisations = await getPlaceOrganisations(slug);
		const sources = await getRecordSources(source, slug);
		const urls = await getRecordUrls(source, slug);

		const placeMoments = (await getRecordMoments(source, slug)) as PlaceMoment[];
		const parentData = await parent();
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment: Moment) =>
			placeMoments?.some((pm) => parseInt(pm.moment) === moment.n)
		);

		return {
			place,
			title: place.name,
			meta,
			description: description?.code,
			donations,
			events,
			feature,
			moments,
			organisations,
			sources,
			urls
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}

export async function entries() {
	const data = await getRecords('place');
	if (!data) return [];

	const entries = data.filter((place) => place.slug).map((place) => ({ slug: place.slug }));
	return entries;
}
