import { EMPTY_PLACEHOLDER } from '$lib/config';
import { handleLoadError } from '$lib/errorHandling';
import {
	getRecord,
	getRecordDonations,
	getRecordEvents,
	getRecordFeature,
	getRecordFunded,
	getRecordKnows,
	getRecordLanguages,
	getPersonMemberOf,
	getRecordMoments,
	getRecordOccupations,
	getRecords,
	getRecordSameAs,
	getRecordSources,
	getRecordUrls
} from '$lib/supabase';
import type { Moment, Person, PersonMoment } from '$lib/types';
import { compile } from 'mdsvex';

export async function load({ params, parent }) {
	const { slug } = params;

	try {
		const source = 'person';
		const person = (await getRecord(source, slug)) as Person;

		const recordLanguages = await getRecordLanguages(source, slug);
		const languages =
			recordLanguages && recordLanguages.length
				? recordLanguages.map((l) => l.name)
				: [person?.language || EMPTY_PLACEHOLDER];

		const occupations = await getRecordOccupations(source, slug);

		const meta = {
			'Alternative names': person?.alternative_names || EMPTY_PLACEHOLDER,
			Gender: person?.gender || EMPTY_PLACEHOLDER,
			Nationality: person?.nationality || EMPTY_PLACEHOLDER,
			Ethnicity: person?.ethnicity || EMPTY_PLACEHOLDER,
			Languages: languages?.join(', ') || EMPTY_PLACEHOLDER,
			Occupations: occupations?.map((po) => po.occupation).join(', ') || EMPTY_PLACEHOLDER
		};

		const description = await compile(person?.description || '');
		const donationsAsAgent = await getRecordDonations(source, slug, 'agent');
		const donationsAsRecipient = await getRecordDonations(source, slug, 'recipient');
		const events = await getRecordEvents(source, slug);
		const feature = await getRecordFeature(source, slug);
		const funded = await getRecordFunded(source, slug);
		const knows = await getRecordKnows(slug);
		const memberOf = await getPersonMemberOf('organisation', source, slug);
		const sameAs = await getRecordSameAs(source, slug);
		const sources = await getRecordSources(source, slug);
		const urls = await getRecordUrls(source, slug);

		const personMoments = (await getRecordMoments(source, slug)) as PersonMoment[];
		const parentData = await parent();
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment: Moment) =>
			personMoments?.some((pm) => parseInt(pm.moment) === moment.n)
		);

		return {
			person,
			meta,
			description: description?.code,
			donationsAsAgent,
			donationsAsRecipient,
			events,
			feature,
			funded,
			knows,
			memberOf,
			moments,
			sameAs,
			sources,
			urls,
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
