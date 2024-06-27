import { error } from '@sveltejs/kit';
import { getMoments } from '$lib/moments.js';

export async function load({ data, params }) {
	try {
		const moment = await import(`../../../moments/${params.slug}/index.md`);

		const moments = await getMoments();

		return {
			meta: moment.metadata,
			content: moment.default,
			moments: moments,
			momentPeople: data.momentPeople,
			people: data.people
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
