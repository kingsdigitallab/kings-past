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
	getRecordUrls
} from '$lib/supabase';
import type { Moment, Organisation, OrganisationMoment } from '$lib/types';
import { compile } from 'mdsvex';

export async function load({ params, parent }) {
	const { slug } = params;

	try {
		const source = 'organisation';
		const organisation = (await getRecord(source, slug)) as Organisation;

		const languages = await getRecordLanguages(source, slug);

		const meta = {
			'Alternative names': organisation.alternative_names || EMPTY_PLACEHOLDER,
			'Organisation type': organisation.organisation_type || EMPTY_PLACEHOLDER,
			'Founding date': organisation.founding_date || EMPTY_PLACEHOLDER,
			'Dissolution date': organisation.dissolution_date || EMPTY_PLACEHOLDER,
			Location: organisation.location || EMPTY_PLACEHOLDER,
			Languages: languages?.join(', ') || EMPTY_PLACEHOLDER
		};

		const description = await compile(organisation?.description || '');
		const donationsAsAgent = await getRecordDonations(source, slug, 'agent');
		const donationsAsRecipient = await getRecordDonations(source, slug, 'recipient');
		const personMembers = await getPersonMemberOf('person', source, slug);
		const organisationMembers = await getOrganisationMemberOf('member_of', source, slug);
		const memberOf = await getOrganisationMemberOf(source, 'member_of', slug);
		const sameAs = await getRecordSameAs(source, slug);
		const sources = await getRecordSources(source, slug);
		const urls = await getRecordUrls(source, slug);

		const orgMoments = (await getRecordMoments(source, slug)) as OrganisationMoment[];
		const parentData = await parent();
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment: Moment) =>
			orgMoments?.some((om) => parseInt(om.moment) === moment.n)
		);

		return {
			organisation,
			meta,
			description: description?.code,
			donationsAsAgent,
			donationsAsRecipient,
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
