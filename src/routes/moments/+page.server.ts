import { base } from '$app/paths';
import type { Moment } from '$lib/types';

export async function load({ fetch }) {
	const response = await fetch(`${base}/api/moments`);
	const moments: Moment[] = await response.json();

	return { moments };
}
