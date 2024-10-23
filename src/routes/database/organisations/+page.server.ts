import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';

export async function load() {
	try {
		const data = await getRecords('organisation');

		return {
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('organisations', e);
	}
}
