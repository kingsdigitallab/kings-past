import { EMPTY_PLACEHOLDER } from '$lib/constants';
import { getRecord, getRecords, getRecordsBy, supabase } from '$lib/supabase';
import { error } from '@sveltejs/kit';
import { compile } from 'mdsvex';

export async function load({ params, parent }) {
	const { slug } = params;

	try {
		const person = await getRecord('person', slug);

		const meta = {
			'Alternative names': person?.alternative_names || EMPTY_PLACEHOLDER,
			Gender: person?.gender || EMPTY_PLACEHOLDER,
			Nationality: person?.nationality || EMPTY_PLACEHOLDER,
			Ethnicity: person?.ethnicity || EMPTY_PLACEHOLDER,
			Languages: person?.languages || EMPTY_PLACEHOLDER
		};

		const description = await compile(person?.description || '');

		const feature = await supabase.from('person_feature').select('').eq('person', slug);

		const knows = await supabase
			.from('person_knows')
			.select('')
			.or(`person.eq.${slug},knows.eq.${slug}`)
			.order('knows,person');

		const memberOf = await supabase
			.from('person_member_of')
			.select('')
			.eq('person', slug)
			.order('organisation');

		const personMoments = await supabase
			.from('person_moment')
			.select('')
			.eq('person', slug)
			.order('moment');

		const sources = await supabase
			.from('person_source')
			.select('')
			.eq('person', slug)
			.order('source');

		const parentData = await parent();
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment) =>
			personMoments?.data?.some((pm) => parseInt(pm.moment) === moment.n)
		);

		return {
			person,
			meta,
			description: description?.code,
			feature: feature.data,
			knows: knows.data,
			memberOf: memberOf.data,
			moments: moments,
			sources: sources.data,
			people: parentData.peopleBySlug,
			organisations: await getRecordsBy('organisation', 'slug')
		};
	} catch (e) {
		if (e instanceof Error) {
			error(404, `Could not load ${slug}: ${e.message}`);
		} else {
			error(404, `Could not load ${slug}: An unknown error occurred`);
		}
	}
}

export async function entries() {
	const data = await getRecords('person');
	if (!data) return [];

	const entries = data.filter((person) => person.slug).map((person) => ({ slug: person.slug }));

	return entries;
}
