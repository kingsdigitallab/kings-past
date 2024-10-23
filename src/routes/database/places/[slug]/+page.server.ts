import { getRecord, getRecords } from '$lib/supabase';
import { handleLoadError } from '$lib/errorHandling';
import type { Place } from '$lib/types';

export async function load({ params }) {
	const { slug } = params;

	try {
		return {
			place: await getRecord('place', slug)
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
