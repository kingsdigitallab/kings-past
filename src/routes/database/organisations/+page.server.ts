import { database } from '$lib/config';
import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';

export async function load() {
	try {
		const data = await getRecords('organisation');

		return {
			_metadata: {
				title: 'Organisations',
				excerpt: database.organisations.excerpt,
				tags: database.tags
			},
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('organisations', e);
	}
}
