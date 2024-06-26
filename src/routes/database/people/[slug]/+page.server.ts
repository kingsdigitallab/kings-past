import { EMPTY_PLACEHOLDER } from '$lib/constants';
import { getRecord, getRecords, supabase } from '$lib/supabase';
import { error } from '@sveltejs/kit';
import { compile } from 'mdsvex';

export async function load({ params, parent }) {
	try {
		const person = await getRecord('person', params.slug);

		const meta = {
			'Alternative names': person.alternative_names || EMPTY_PLACEHOLDER,
			Gender: person.gender || EMPTY_PLACEHOLDER,
			Nationality: person.nationality || EMPTY_PLACEHOLDER,
			Ethnicity: person.ethnicity || EMPTY_PLACEHOLDER,
			Languages: person.languages || EMPTY_PLACEHOLDER
		};

		const description = await compile(person.description);

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

		const sources = await supabase
			.from('person_source')
			.select('')
			.eq('person', params.slug)
			.order('source');

		const organisations = await getRecords('organisation');

		const parentData = await parent();

		return {
			person,
			meta,
			description: description?.code,
			knows: knows.data,
			memberOf: memberOf.data,
			sources: sources.data,
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
