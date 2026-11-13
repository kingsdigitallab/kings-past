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

		const [
			person,
			parentData,
			recordLanguages,
			occupations,
			donationsAsAgent,
			donationsAsRecipient,
			events,
			feature,
			funded,
			knows,
			memberOf,
			sameAs,
			sources,
			urls,
			personMoments
		] = await Promise.all([
			getRecord(source, slug) as Promise<Person>,
			parent(),
			getRecordLanguages(source, slug),
			getRecordOccupations(source, slug),
			getRecordDonations(source, slug, 'agent'),
			getRecordDonations(source, slug, 'recipient'),
			getRecordEvents(source, slug),
			getRecordFeature(source, slug),
			getRecordFunded(source, slug),
			getRecordKnows(slug),
			getPersonMemberOf('organisation', source, slug),
			getRecordSameAs(source, slug),
			getRecordSources(source, slug),
			getRecordUrls(source, slug),
			getRecordMoments(source, slug) as Promise<PersonMoment[]>
		]);
		const description = await compile(person?.description || '');
		const languages =
			recordLanguages && recordLanguages.length
				? recordLanguages.map((l) => l.name)
				: [person?.language || EMPTY_PLACEHOLDER];
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment: Moment) =>
			personMoments?.some((pm) => parseInt(pm.moment) === moment.n)
		);
		const meta = {
			'Alternative names': person?.alternative_names || EMPTY_PLACEHOLDER,
			Gender: person?.gender || EMPTY_PLACEHOLDER,
			Nationality: person?.nationality || EMPTY_PLACEHOLDER,
			Ethnicity: person?.ethnicity || EMPTY_PLACEHOLDER,
			Languages: languages?.join(', ') || EMPTY_PLACEHOLDER,
			Occupations: occupations?.map((po) => po.occupation).join(', ') || EMPTY_PLACEHOLDER
		};
		return {
			_metadata: {
				title: person.name,
				excerpt: `Explore the person ${person.name}`,
				tags: 'database, people'
			},
			person,
			title: person.name,
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
