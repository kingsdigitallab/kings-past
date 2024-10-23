import { EMPTY_PLACEHOLDER } from '$lib/config';
import { handleLoadError } from '$lib/errorHandling.js';
import { getRecord, getRecordsBy, supabase } from '$lib/supabase';
import type { Organisation } from '$lib/types';
import { compile } from 'mdsvex';

export async function load({ params }) {
	const { slug } = params;

	try {
		const organisation = (await getRecord('organisation', slug)) as Organisation;

		const meta = {
			'Alternative names': organisation.alternative_names || EMPTY_PLACEHOLDER,
			'Founding date': organisation.founding_date || EMPTY_PLACEHOLDER,
			'Dissolution date': organisation.dissolution_date || EMPTY_PLACEHOLDER,
			Location: organisation.location || EMPTY_PLACEHOLDER,
			'Organisation type': organisation.organisation_type || EMPTY_PLACEHOLDER
		};

		const description = await compile(organisation?.description || '');

		const members = await supabase
			.from('person_member_of')
			.select('*')
			.eq('organisation', slug)
			.order('person');

		const sources = await supabase
			.from('organisation_source')
			.select('*')
			.eq('organisation', slug)
			.order('source');

		return {
			organisation,
			meta,
			description,
			members: members.data,
			sources,
			people: await getRecordsBy('person', 'slug')
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
