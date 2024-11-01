import type { PageServerLoad } from './$types';

export const load = (async () => {
	return {
		_metadata: {
			title: 'Search',
			excerpt: "Search the King's Past project",
			tags: 'search'
		}
	};
}) satisfies PageServerLoad;
