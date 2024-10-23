import { createClient } from '@supabase/supabase-js';
import { SUPABASE_URL, SUPABASE_KEY } from '$env/static/private';
import type { Database } from './types';
import type { KPRecord, TableNames } from '$lib/types';

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

export async function getRecordLanguages(source: TableNames, slug: string) {
	// @ts-expect-error Too complex for TS.
	const languagesQuery = supabase
		.from('language')
		.select(`*, ${source}_language!inner(${source})`)
		.eq(`${source}_language.${source}`, slug)
		.order('name');

	const { data: languages, error } = await languagesQuery;

	if (error) throw error;

	return languages;
}

export async function getRecordMoments(source: TableNames, slug: string) {
	// @ts-expect-error No overload matches this call.
	const momentsQuery = supabase
		.from(`${source}_moment`)
		.select('*')
		.eq(source, slug)
		.order('moment');

	const { data: moments, error } = await momentsQuery;

	if (error) throw error;

	return moments;
}

export async function getRecordSources(source: TableNames, slug: string) {
	// @ts-expect-error Too complex for TS.
	const sourcesQuery = supabase
		.from('source')
		.select(`*, ${source}_source!inner(${source})`)
		.eq(`${source}_source.${source}`, slug)
		.order('slug');

	const { data: sources, error } = await sourcesQuery;

	if (error) throw error;

	return sources;
}
