import { createClient } from '@supabase/supabase-js';
import { SUPABASE_URL, SUPABASE_KEY } from '$env/static/private';
import type { Database } from './types';

export const supabase = createClient<Database>(SUPABASE_URL, SUPABASE_KEY);

export async function getRecords(source: string, orderBy?: string) {
	if (!orderBy) {
		orderBy = 'name';
	}

	const { data } = await supabase.from(source).select('').order(orderBy);

	return data;
}

export async function getRecord(source: string, slug: string) {
	const { data } = await supabase.from(source).select('').eq('slug', slug).single();

	return data;
}
