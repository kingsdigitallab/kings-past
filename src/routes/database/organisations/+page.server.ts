import { getRecords } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load() {
	try {
		const data = await getRecords('organisation');

		return {
			collection: data ?? []
		};
	} catch (e) {
		error(404, `Could not find people`);
	}
}
