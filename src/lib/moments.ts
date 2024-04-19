import type { Moment } from '$lib/types';

export async function getMoments() {
	const moments: Moment[] = [];

	const paths = import.meta.glob('/src/moments/*/index.md', { eager: true });

	for (const path in paths) {
		const file = paths[path];
		const slug = path.split('/').at(-2);

		if (file && typeof file === 'object' && 'metadata' in file && slug) {
			const metadata = file.metadata as Omit<Moment, 'slug'>;
			const moment = { ...metadata, slug } satisfies Moment;
			moments.push(moment);
		}
	}

	return moments;
}
