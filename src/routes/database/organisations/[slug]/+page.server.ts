import { EMPTY_PLACEHOLDER } from '$lib/constants';
import { getRecord, getRecords, supabase } from '$lib/supabase';
import { error } from '@sveltejs/kit';
import { compile } from 'mdsvex';

export async function load({ params }) {
	try {
		const item = await getRecord('organisation', params.slug);

		const meta = {
			'Alternative names': item.alternative_names || EMPTY_PLACEHOLDER,
			'Founding date': item.founding_date || EMPTY_PLACEHOLDER,
			'Dissolution date': item.dissolution_date || EMPTY_PLACEHOLDER,
			Location: item.location || EMPTY_PLACEHOLDER,
			'Organisation type': item.organisation_type || EMPTY_PLACEHOLDER
		};

		const description = await compile(item.description);

		const members = await supabase
			.from('person_member_of')
			.select('')
			.eq('organisation', params.slug)
			.order('person');

		const sources = await supabase
			.from('person_source')
			.select('')
			.eq('person', params.slug)
			.order('source');

		const people = await getRecords('person');

		return {
			item,
			meta,
			description,
			members: members.data,
			sources,
			people: people?.reduce((acc, cur) => {
				acc[cur.slug] = cur;
				return acc;
			}, {})
		};
	} catch (e) {
		console.error(e);
		error(404, `Could not find ${params.slug}`);
	}
}
