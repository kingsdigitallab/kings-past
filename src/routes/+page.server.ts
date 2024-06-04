import type { Moment } from '$lib/types';
import { base } from '$app/paths';

export async function load({ fetch }) {
	const response = await fetch(`${base}/api/moments`);
	const moments: Moment[] = await response.json();

	return { moments };
}
