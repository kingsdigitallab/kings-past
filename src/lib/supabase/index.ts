import { createClient } from '@supabase/supabase-js';
import { SUPABASE_URL, SUPABASE_KEY } from '$env/static/private';
import type { Database } from './types';

export const supabase = createClient<Database>(SUPABASE_URL, SUPABASE_KEY);

export async function getRecords(source: string, orderBy?: string, ascending?: boolean) {
	if (!orderBy) {
		orderBy = 'name';
	}

	if (ascending === undefined) {
		ascending = true;
	}

	const { data } = await supabase.from(source).select('').order(orderBy, { ascending });

	return data;
}

export async function getRecordsBy(source: string, field: string, orderBy?: string) {
	const records = await getRecords(source, orderBy);

	if (!records) {
		return {};
	}

	return records.reduce((acc, cur) => {
		acc[cur[field]] = cur;
		return acc;
	}, {});
}

export async function getRecord(source: string, slug: string) {
	const { data } = await supabase.from(source).select('').eq('slug', slug).single();

	if (!data) throw new Error(`${source}/${slug} not found!`);

	return data;
}
