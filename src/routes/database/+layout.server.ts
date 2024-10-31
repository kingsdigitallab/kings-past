import { handleLoadError } from '$lib/errorHandling';
import { getMoments } from '$lib/moments';
import { getDatabaseStats, getRecordsBy } from '$lib/supabase';
import type { LayoutServerLoad } from './$types';

export const load = (async () => {
	try {
		return {
			stats: await getDatabaseStats(),
			moments: await getMoments(),
			placesBySlug: await getRecordsBy('place', 'slug')
		};
	} catch (error) {
		handleLoadError('database', error);
	}
}) satisfies LayoutServerLoad;
