import { database } from '$lib/config';
import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';

export async function load() {
	try {
		const data = await getRecords('event', 'start_date');

		return {
			_metadata: {
				title: 'Events',
				excerpt: database.events.excerpt,
				tags: database.tags
			},
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('events', e);
	}
}
