import { handleLoadError } from '$lib/errorHandling';
import { getRecords, getRecordsBy } from '$lib/supabase';
import type { Person } from '$lib/types';

export async function load() {
	try {
		const data = (await getRecords('person')) as Person[];

		return {
			_metadata: {
				title: 'People',
				excerpt: "Explore the people that have shaped the King's.",
				tags: 'database, people'
			},
			people: data ?? [],
			peopleBySlug: await getRecordsBy('person', 'slug')
		};
	} catch (e) {
		handleLoadError('people', e);
	}
}
