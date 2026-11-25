import { EMPTY_PLACEHOLDER } from '$lib/config';
import { handleLoadError } from '$lib/errorHandling.js';
import {
	getRecord,
	getRecordDonations,
	getRecordLanguages,
	getPersonMemberOf,
	getRecordMoments,
	getRecordSources,
	getOrganisationMemberOf,
	getRecordSameAs,
	getRecordUrls,
	getRecordEvents
} from '$lib/supabase';
import type { Moment, Organisation, OrganisationMoment } from '$lib/types';
import { compile } from 'mdsvex';

export async function load({ params, parent }) {
	const { slug } = params;

	try {
		const source = 'organisation';

		const [
			organisation,
			parentData,
			languages,
			donationsAsAgent,
			donationsAsRecipient,
			events,
			personMembers,
			organisationMembers,
			memberOf,
			sameAs,
			sources,
			urls,
			orgMoments
		] = await Promise.all([
			getRecord(source, slug) as Promise<Organisation>,
			parent(),
			getRecordLanguages(source, slug),
			getRecordDonations(source, slug, 'agent'),
			getRecordDonations(source, slug, 'recipient'),
			getRecordEvents(source, slug),
			getPersonMemberOf('person', source, slug),
			getOrganisationMemberOf('member_of', source, slug),
			getOrganisationMemberOf(source, 'member_of', slug),
			getRecordSameAs(source, slug),
			getRecordSources(source, slug),
			getRecordUrls(source, slug),
			getRecordMoments(source, slug) as Promise<OrganisationMoment[]>
		]);
		const description = await compile(organisation?.description || '');

		const meta = {
			'Alternative names': organisation.alternative_names || EMPTY_PLACEHOLDER,
			'Organisation type': organisation.organisation_type || EMPTY_PLACEHOLDER,
			'Founding date': organisation.founding_date || EMPTY_PLACEHOLDER,
			'Dissolution date': organisation.dissolution_date || EMPTY_PLACEHOLDER,
			Location: organisation.location || EMPTY_PLACEHOLDER,
			Languages: languages?.join(', ') || EMPTY_PLACEHOLDER
		};
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment: Moment) =>
			orgMoments?.some((om) => parseInt(om.moment) === moment.n)
		);

		return {
			_metadata: {
				title: organisation.name,
				excerpt: `Explore the organisation ${organisation.name}`,
				tags: 'database, organisations'
			},
			organisation,
			title: organisation.name,
			meta,
			description: description?.code,
			donationsAsAgent,
			donationsAsRecipient,
			events,
			personMembers,
			organisationMembers,
			memberOf,
			moments,
			sameAs,
			sources,
			urls
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
