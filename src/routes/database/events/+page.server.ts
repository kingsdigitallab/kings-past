import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';

export async function load() {
	try {
		const data = await getRecords('event', 'start_date');

		return {
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('events', e);
	}
}
