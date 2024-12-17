import { error } from '@sveltejs/kit';
import { getMomentN, getMoments, getResearch } from '$lib/moments';

export async function load({ data, params }) {
	try {
		const moment = await import(`../../../moments/${params.slug}/index.md`);

		const moments = await getMoments();
		const essaysByCategory = await getResearch(params.slug);

		return {
			_metadata: {
				title: moment.metadata.title,
				excerpt: moment.metadata.excerpt,
				tags: moment.metadata.tags
			},
			slug: getMomentN(moment.metadata.n),
			meta: moment.metadata,
			content: moment.default,
			moments,
			essaysByCategory,
			people: data.people
		};
	} catch (e) {
		error(404, `Could not find ${params.slug}`);
	}
}
