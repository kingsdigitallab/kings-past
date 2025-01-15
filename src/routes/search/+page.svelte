<script lang="ts">
	import { browser, dev } from '$app/environment';
	import { afterNavigate, pushState } from '$app/navigation';
	import { base } from '$app/paths';
	import { PagefindUI } from '@pagefind/default-ui';
	import { onMount } from 'svelte';

	import '@pagefind/default-ui/css/ui.css';

	let pagefind: PagefindUI;

	onMount(() => {
		if (browser) {
			initSearch();
		}
	});

	function initSearch() {
		if (pagefind) {
			pagefind.destroy();
		}

		pagefind = new PagefindUI({
			element: '#search',
			autofocus: true,
			bundlePath: `${base}/pagefind/`,
			pageSize: 10,
			processResult: (result: any) => {
				if (result.url) {
					result.url = result.url.replace(/\.html$/, '');
				}

				// remove footer images from results
				if (result.meta.image && result.meta.image.indexOf('assets/footer') >= 0) {
					result.meta.image = undefined;
				}

				return result;
			},
			showEmptyFilters: false
		});

		const searchInput = document.querySelector('#search input') as HTMLInputElement;
		if (searchInput) {
			searchInput.setAttribute('aria-label', `Search the site`);
			searchInput.addEventListener('input', (event: Event) => {
				const target = event.target as HTMLInputElement;
				const url = new URL(window.location.href);

				setTimeout(() => {
					url.searchParams.set('q', target.value);
					pushState(url, '');
				}, 500);
			});
		}

		triggerSearch();
	}

	function triggerSearch() {
		const currentUrl = new URL(window.location.href);
		const searchValue = currentUrl.searchParams.get('q');
		pagefind?.triggerSearch(searchValue);
	}

	afterNavigate(() => {
		if (browser) {
			initSearch();
		}
	});
</script>

<svelte:head>
	<title>Search</title>
</svelte:head>

<article>
	<hgroup>
		<h1>Search</h1>
		<p>Enter keywords to search. Results will update as you type.</p>
	</hgroup>
	<section id="search"></section>
</article>

<style>
	:global(.pagefind-ui__search-input) {
		border-radius: unset !important;
	}

	:global(.pagefind-ui__search-clear) {
		background-color: var(--surface-4) !important;
		border-radius: unset !important;
		color: var(--text-1) !important;
		font-size: var(--font-size-2) !important;
		padding-inline: var(--size-4) !important;

		&:hover {
			background-color: var(--surface-3) !important;
			border-bottom: unset !important;
		}
	}

	:global(.pagefind-ui__result-excerpt mark) {
		background-color: color-mix(in srgb, var(--yellow) 70%, white);
		border-radius: var(--size-1);
		padding: var(--size-1);
	}
</style>
