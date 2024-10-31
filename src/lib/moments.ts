import type { Moment } from '$lib/types';

interface MomentTitle {
	year: string;
	name: string;
}

export function splitMomentTitle(title: string): MomentTitle {
	const [year = '', name = ''] = title.split(':').map((part) => part.trim());
	return { year, name };
}

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

export function getMomentN(n: number | string) {
	return String(n).padStart(2, '0');
}

export async function getResearch(moment: string): Promise<Record<string, Moment[]>> {
	const essays = [];

	const paths = import.meta.glob(['/src/moments/*/*.md', '!/src/moments/*/index.md'], {
		eager: true
	});

	for (const path in paths) {
		const file = paths[path];
		const slug = path.split('/').at(-1)?.split('.').at(0);

		if (
			path.startsWith(`/src/moments/${moment}`) &&
			file &&
			typeof file === 'object' &&
			'metadata' in file &&
			slug
		) {
			const metadata = file.metadata as Omit<Moment, 'slug'>;
			const essay = { ...metadata, slug };
			essays.push(essay);
		}
	}

	const defaultCategory = 'Academic';

	const essaysByCategory = essays
		.sort((a, b) => a.category?.localeCompare(b.category || '') || a.title.localeCompare(b.title))
		.reduce<Record<string, typeof essays>>((acc, essay) => {
			const category = essay?.category || defaultCategory;

			acc[category] = acc[category] || [];
			acc[category].push(essay);
			return acc;
		}, {});

	return essaysByCategory;
}
