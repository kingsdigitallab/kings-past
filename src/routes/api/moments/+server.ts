import { json } from '@sveltejs/kit';
import { getMoments } from '$lib/moments';

export const prerender = true;

export async function GET() {
	const moments = await getMoments();
	return json(moments);
}
