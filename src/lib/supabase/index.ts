import { SUPABASE_KEY, SUPABASE_URL } from '$env/static/private';
import type {
	Donation,
	Event,
	KPRecord,
	Language,
	Organisation,
	PersonOccupation,
	TableNames
} from '$lib/types';
import { createClient } from '@supabase/supabase-js';
import type { Database } from './types';

export const supabase = createClient<Database>(SUPABASE_URL, SUPABASE_KEY);

export async function getRecords(
	source: TableNames,
	orderBy?: string,
	ascending?: boolean
): Promise<KPRecord[]> {
	if (!orderBy) {
		orderBy = 'name';
	}

	if (ascending === undefined) {
		ascending = true;
	}

	const { data } = await supabase.from(source).select('*').order(orderBy, { ascending });

	return data as KPRecord[];
}

export async function getRecordsBy(
	source: TableNames,
	field: string,
	orderBy?: string
): Promise<Record<string, KPRecord>> {
	const records = await getRecords(source, orderBy);

	if (!records) {
		return {};
	}

	return records.reduce<Record<string, KPRecord>>(
		(acc, cur) => {
			if (field in cur) {
				const key = cur[field as keyof KPRecord] as string;
				acc[key] = cur;
			}

			return acc;
		},
		{} as Record<string, KPRecord>
	);
}

export async function getRecord(source: TableNames, slug: string): Promise<KPRecord> {
	const { data } = await supabase.from(source).select('*').eq('slug', slug).single();

	if (!data) throw new Error(`${source}/${slug} not found!`);

	return data as KPRecord;
}

export async function getRecordDonations(
	source: string,
	slug: string,
	role: 'agent' | 'recipient' = 'agent'
): Promise<Donation[]> {
	const donationsQuery = supabase
		.from('donation')
		.select(`*, donation_${role}_${source}!inner(${source})`)
		.eq(`donation_${role}_${source}.${source}`, slug)
		.order('name');

	const { data: donations, error } = await donationsQuery;

	if (error) throw error;

	return donations as unknown as Donation[];
}

export async function getRecordEvents(source: string, slug: string): Promise<Event[]> {
	const eventsQuery = supabase
		.from('event')
		.select(`*, event_${source}!inner(${source})`)
		.eq(`event_${source}.${source}`, slug)
		.order('name');

	const { data: events, error } = await eventsQuery;

	if (error) throw error;

	return events as unknown as Event[];
}

export async function getRecordFeature(source: string, slug: string) {
	const tableName = `${source}_feature` as TableNames;
	const featureQuery = supabase.from(tableName).select('*').eq(source, slug);

	const { data: feature, error } = await featureQuery;

	if (error) throw error;

	return feature?.[0];
}

export async function getRecordFunded(source: string, slug: string): Promise<Organisation[]> {
	const fundedQuery = supabase
		.from('organisation')
		.select(`*, ${source}_funder!inner(${source})`)
		.eq(`${source}_funder.${source}`, slug)
		.order('name');

	const { data: funded, error } = await fundedQuery;

	if (error) throw error;

	return funded as unknown as Organisation[];
}

export async function getRecordKnows(slug: string) {
	const knowsQuery = supabase
		.from('person_knows')
		.select('*')
		.or(`person.eq.${slug},knows.eq.${slug}`)
		.order('knows,person');

	const { data: knows, error } = await knowsQuery;

	if (error) throw error;

	return knows;
}

export async function getRecordLanguages(source: string, slug: string): Promise<Language[]> {
	const languagesQuery = supabase
		.from('language')
		.select(`*, ${source}_language!inner(${source})`)
		.eq(`${source}_language.${source}`, slug)
		.order('name');

	const { data: languages, error } = await languagesQuery;

	if (error) throw error;

	return languages as unknown as Language[];
}

export async function getRecordMemberOf(source: string, slug: string) {
	const memberOfQuery = supabase
		.from('organisation')
		.select('*, person_member_of!inner(person)')
		.eq('person_member_of.person', slug)
		.order('slug');

	const { data: memberOf, error } = await memberOfQuery;

	if (error) throw error;

	return memberOf;
}

export async function getRecordMoments(source: string, slug: string) {
	const tableName = `${source}_moment` as TableNames;
	const momentsQuery = supabase.from(tableName).select('*').eq(source, slug).order('moment');

	const { data: moments, error } = await momentsQuery;

	if (error) throw error;

	return moments;
}

export async function getRecordOccupations(
	source: string,
	slug: string
): Promise<PersonOccupation[]> {
	const tableName = `${source}_occupation` as TableNames;
	const occupationsQuery = supabase
		.from(tableName)
		.select('*')
		.eq(source, slug)
		.order('occupation');

	const { data: occupations, error } = await occupationsQuery;

	if (error) throw error;

	return occupations as PersonOccupation[];
}

export async function getRecordSameAs(source: string, slug: string) {
	const tableName = `${source}_same_as` as TableNames;
	const sameAsQuery = supabase.from(tableName).select('*').eq(source, slug).order('name');

	const { data: sameAs, error } = await sameAsQuery;

	if (error) throw error;

	return sameAs;
}

export async function getRecordSources(source: string, slug: string) {
	const sourcesQuery = supabase
		.from('source')
		.select(`*, ${source}_source!inner(${source})`)
		.eq(`${source}_source.${source}`, slug)
		.order('slug');

	const { data: sources, error } = await sourcesQuery;

	if (error) throw error;

	return sources;
}

export async function getRecordUrls(source: string, slug: string) {
	const tableName = `${source}_url` as TableNames;
	const urlsQuery = supabase.from(tableName).select('*').eq(source, slug).order('name');

	const { data: urls, error } = await urlsQuery;

	if (error) throw error;

	return urls;
}
