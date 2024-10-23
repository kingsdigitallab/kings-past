import { handleLoadError } from '$lib/errorHandling';
import { getRecord } from '$lib/supabase';
import type { Event } from '$lib/types';

export async function load({ params }) {
	const { slug } = params;
	try {
		return {
			event: (await getRecord('event', slug)) as Event
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
