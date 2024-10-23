import { handleLoadError } from '$lib/errorHandling';
import { getMoments } from '$lib/moments';
import { getRecords, getRecordsBy } from '$lib/supabase';
import type { Person } from '$lib/types';

export async function load() {
	try {
		const data = (await getRecords('person')) as Person[];

		return {
			people: data ?? [],
			peopleBySlug: await getRecordsBy('person', 'slug'),
			moments: await getMoments()
		};
	} catch (e) {
		handleLoadError('people', e);
	}
}
