import { getEntity } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load({ params }) {
	try {
		return {
			item: await getEntity('donation', params.slug)
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
