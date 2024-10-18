import { getRecordsBy } from '$lib/supabase';
import type { LayoutServerLoad } from './$types';

export const load = (async () => {
	return {
		placesBySlug: await getRecordsBy('place', 'slug')
	};
}) satisfies LayoutServerLoad;
