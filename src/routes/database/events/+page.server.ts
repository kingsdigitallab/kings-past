import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';

export async function load() {
	try {
		const data = await getRecords('event', 'start_date');

		return {
			_metadata: {
				title: 'Events',
				excerpt: "Explore the events that have shaped the King's.",
				tags: 'database, events'
			},
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('events', e);
	}
}
