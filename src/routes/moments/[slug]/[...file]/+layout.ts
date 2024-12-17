import { error } from '@sveltejs/kit';

export async function load({ params }) {
	try {
		const essay = await import(`../../../../moments/${params.slug}/${params.file}.md`);

		return {
			_metadata: {
				title: essay.metadata.title,
				excerpt: essay.metadata.excerpt,
				tags: essay.metadata.tags
			},
			essay: essay.default,
			essayMeta: essay.metadata
		};
	} catch (e) {
		error(404, `Could not find ${params.file}`);
	}
}
