import { getRecord, getRecords } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load({ params }) {
	try {
		return {
			item: await getRecord('place', params.slug)
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}

export async function entries() {
	const data = await getRecords('place');
	if (!data) return [];

	const entries = data.filter((place) => place.slug).map((place) => ({ slug: place.slug }));
	return entries;
}
