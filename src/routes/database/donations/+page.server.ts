import { database } from '$lib/config';
import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';

export async function load() {
	try {
		const data = await getRecords('donation', 'start_date');

		return {
			_metadata: {
				title: 'Donations',
				excerpt: database.donations.excerpt,
				tags: database.tags
			},
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('donations', e);
	}
}
