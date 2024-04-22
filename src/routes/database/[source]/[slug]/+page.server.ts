import { entityTypesMapping } from '$lib/config';
import { supabase } from '$lib/supabase';
import { error } from '@sveltejs/kit';

export async function load({ params }) {
	try {
		if (!entityTypesMapping[params.source]) {
			throw new Error(`Could not find ${params.source}`);
		}

		const entityType = entityTypesMapping[params.source];
		const { data } = await supabase.from(entityType).select('').eq('slug', params.slug);

		return {
			item: data && data[0]
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
