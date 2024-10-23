import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';
import type { Place } from '$lib/types';
export async function load() {
	try {
		const data = (await getRecords('place')) as Place[];

		return {
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('places', e);
	}
}
