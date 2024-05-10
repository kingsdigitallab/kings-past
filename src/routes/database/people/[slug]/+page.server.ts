import { getRecord, getRecords, supabase } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load({ params, parent }) {
	try {
		const person = await getRecord('person', params.slug);

		const knows = await supabase
			.from('person_knows')
			.select('')
			.or(`person.eq.${params.slug},knows.eq.${params.slug}`)
			.order('knows,person');

		const memberOf = await supabase
			.from('person_member_of')
			.select('')
			.eq('person', params.slug)
			.order('organisation');

		const organisations = await getRecords('organisation');

		const parentData = await parent();

		return {
			person,
			knows: knows.data,
			memberOf: memberOf.data,
			people: parentData.peopleBySlug,
			organisations: organisations?.reduce((acc, org) => {
				acc[org.slug] = org;
				return acc;
			}, {})
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
