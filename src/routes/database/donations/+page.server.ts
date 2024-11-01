import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';

export async function load() {
	try {
		const data = await getRecords('donation', 'start_date');

		return {
			_metadata: {
				title: 'Donations',
				excerpt: "Explore the donations that have been made to the King's.",
				tags: 'database, donations'
			},
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('donations', e);
	}
}
