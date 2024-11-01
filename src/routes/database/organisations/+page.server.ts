import { handleLoadError } from '$lib/errorHandling';
import { getRecords } from '$lib/supabase';

export async function load() {
	try {
		const data = await getRecords('organisation');

		return {
			_metadata: {
				title: 'Organisations',
				excerpt: "Explore the organisations that have shaped the King's.",
				tags: 'database, organisations'
			},
			collection: data ?? []
		};
	} catch (e) {
		handleLoadError('organisations', e);
	}
}
