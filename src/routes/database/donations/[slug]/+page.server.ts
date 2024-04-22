import { getRecord } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load({ params }) {
	try {
		return {
			item: await getRecord('donation', params.slug)
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
