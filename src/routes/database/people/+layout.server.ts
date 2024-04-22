import { getRecords } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load() {
	try {
		const data = await getRecords('person');

		return {
			people: data ?? [],
			peopleBySlug: data.reduce((acc, person) => {
				acc[person.slug] = person;
				return acc;
			}, {})
		};
	} catch (e) {
		error(404, `Could not find people`);
	}
}
