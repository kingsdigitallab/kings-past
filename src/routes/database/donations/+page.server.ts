import { getRecords } from '$lib/supabase';
import type { Database } from '$lib/supabase/types';
import { error } from '@sveltejs/kit';

export async function load() {
	try {
		const data = await getRecords('donation', 'start_date', false);

		return {
			collection: ((data as any[]) ?? []) as Database['public']['Tables']['donation']['Row'][]
		};
	} catch (e) {
		error(404, `Could not find donations`);
	}
}
