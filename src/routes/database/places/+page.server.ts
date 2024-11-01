import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';
import type { Place } from '$lib/types';
export async function load() {
	try {
		const data = (await getRecords('place')) as Place[];

		return {
			_metadata: {
				title: 'Places',
				excerpt: "Explore the places related to King's.",
				tags: 'database, places'
			},
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('places', e);
	}
}
