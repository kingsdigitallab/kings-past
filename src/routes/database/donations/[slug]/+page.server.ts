import { getRecord } from '$lib/supabase';
import type { Donation } from '$lib/types';
import { handleLoadError } from '$lib/errorHandling';

export async function load({ params }) {
	const { slug } = params;

	try {
		return {
			donation: (await getRecord('donation', slug)) as Donation
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
