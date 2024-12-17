import { getMomentPeople } from '$lib/supabase';
import { handleLoadError } from '$lib/errorHandling.js';

export async function load({ params }) {
	const { slug } = params;

	try {
		const people = await getMomentPeople(slug);

		return {
			people
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
