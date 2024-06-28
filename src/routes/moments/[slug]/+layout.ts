import { error } from '@sveltejs/kit';
import { getMomentN, getMoments, getResearch } from '$lib/moments';

export async function load({ data, params }) {
	try {
		const moment = await import(`../../../moments/${params.slug}/index.md`);

		const moments = await getMoments();
		const essays = await getResearch(params.slug);

		return {
			slug: getMomentN(moment.metadata.n),
			meta: moment.metadata,
			content: moment.default,
			moments,
			essays,
			momentPeople: data.momentPeople,
			people: data.people
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
