import { EMPTY_PLACEHOLDER } from '$lib/config';
import {
	getRecord,
	getRecords,
	getRecordsBy,
	supabase,
	getRecordSources,
	getRecordMoments,
	getRecordLanguages,
	getRecordFeature
} from '$lib/supabase';
import type { Moment, Person, PersonMoment } from '$lib/types';
import { compile } from 'mdsvex';
import { handleLoadError } from '$lib/errorHandling';

export async function load({ params, parent }) {
	const { slug } = params;

	try {
		const person = (await getRecord('person', slug)) as Person;

		const personLanguages = await getRecordLanguages('person', slug);
		const languages =
			personLanguages && personLanguages.length
				? personLanguages.map((l) => l.name)
				: [person?.language || EMPTY_PLACEHOLDER];

		const meta = {
			'Alternative names': person?.alternative_names || EMPTY_PLACEHOLDER,
			Gender: person?.gender || EMPTY_PLACEHOLDER,
			Nationality: person?.nationality || EMPTY_PLACEHOLDER,
			Ethnicity: person?.ethnicity || EMPTY_PLACEHOLDER,
			Languages: languages?.join(', ') || EMPTY_PLACEHOLDER
		};

		const description = await compile(person?.description || '');

		const feature = await getRecordFeature('person', slug);

		const knows = await supabase
			.from('person_knows')
			.select('*')
			.or(`person.eq.${slug},knows.eq.${slug}`)
			.order('knows,person');

		const memberOf = await supabase
			.from('organisation')
			.select('*, person_member_of!inner(person)')
			.eq('person_member_of.person', slug)
			.order('slug');

		const personMoments = await getRecordMoments('person', slug);

		const sources = await getRecordSources('person', slug);

		const parentData = await parent();
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment: Moment) =>
			personMoments?.some((pm) => parseInt(pm.moment) === moment.n)
		);

		return {
			person,
			meta,
			description: description?.code,
			feature,
			knows: knows.data,
			memberOf: memberOf.data,
			moments: moments,
			sources,
			people: parentData.peopleBySlug
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}

export async function entries() {
	const data = await getRecords('person');
	if (!data) return [];

	const entries = data.filter((person) => person.slug).map((person) => ({ slug: person.slug }));

	return entries;
}
