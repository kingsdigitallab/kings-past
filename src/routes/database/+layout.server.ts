import { getMoments } from '$lib/moments';
import { getRecordsBy } from '$lib/supabase';
import type { LayoutServerLoad } from './$types';

export const load = (async () => {
	return {
		moments: await getMoments(),
		placesBySlug: await getRecordsBy('place', 'slug')
	};
}) satisfies LayoutServerLoad;
