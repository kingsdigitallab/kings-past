import { getRecords, getRecordsBy } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load() {
	try {
		const data = await getRecords('person');
		return {
			people: data ?? [],
			peopleBySlug: await getRecordsBy('person', 'slug')
		};
	} catch (e) {
		error(404, `Could not find people`);
	}
}
