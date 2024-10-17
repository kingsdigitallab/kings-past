import adapter from '@sveltejs/adapter-static';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';
import { mdsvex } from 'mdsvex';
import rehypeSlug from 'rehype-slug';
import rehypeFigure from '@microflash/rehype-figure';
import remarkFlexibleContainers from 'remark-flexible-containers';
import remarkFootnotes from 'remark-footnotes';

/** @type {import('mdsvex').MdsvexOptions} */
const mdsvexOptions = {
	extensions: ['.md'],
	rehypePlugins: [rehypeSlug, rehypeFigure],
	remarkPlugins: [remarkFlexibleContainers, remarkFootnotes],
	smartypants: true
};

/** @type {import('@sveltejs/kit').Config} */
const config = {
	extensions: ['.md', '.svelte'],
	// Consult https://kit.svelte.dev/docs/integrations#preprocessors
	// for more information about preprocessors
	preprocess: [mdsvex(mdsvexOptions), vitePreprocess()],

	kit: {
		// adapter-auto only supports some environments, see https://kit.svelte.dev/docs/adapter-auto for a list.
		// If your environment is not supported or you settled on a specific environment, switch out the adapter.
		// See https://kit.svelte.dev/docs/adapters for more information about adapters.
		adapter: adapter(),
		alias: {
			$images: 'src/lib/assets/images',
			$css: 'src/lib/assets/stylesheets'
		},
		paths: {
			base: process.env.GITHUB_ACTIONS_BUILD === 'true' ? '/kings-past' : ''
		}
	}
};

export default config;
