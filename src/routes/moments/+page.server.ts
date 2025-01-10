import { base } from '$app/paths';
import type { Moment } from '$lib/types';

export async function load({ fetch }) {
	const response = await fetch(`${base}/api/moments`);
	const moments: Moment[] = await response.json();

	return {
		_metadata: {
			title: 'Moments',
			excerpt: "Explore the many-side history of King's College London moments through thirteen moments, which help trace the connection between King's and the world beyond, and pose questions for us now.",
			tags: 'database, moments'
		},
		moments
	};
}
