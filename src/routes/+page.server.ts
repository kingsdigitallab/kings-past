import type { Moment } from '$lib/types';

export async function load({ fetch }) {
	const response = await fetch('/api/moments');
	const moments: Moment[] = await response.json();

	return { moments };
}
