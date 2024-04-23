import { getRecord, supabase } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load({ params, parent }) {
	try {
		const person = await getRecord('person', params.slug);

		const knows = await supabase
			.from('person_knows')
			.select('')
			.or(`person.eq.${params.slug},knows.eq.${params.slug}`)
			.order('knows,person');

		const parentData = await parent();

		return {
			person,
			knows: knows.data,
			people: parentData.peopleBySlug
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
