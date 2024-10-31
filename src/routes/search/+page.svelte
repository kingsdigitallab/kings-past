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
			console.log('onMount', location.href);
			pagefind = new PagefindUI({
				element: '#search',
				autofocus: true,
				bundlePath: `${base}/pagefind/`,
				showEmptyFilters: false,
				processResult: (result: any) => {
					if (dev && result.url) {
						result.url = result.url.replace(/\.html$/, '');
					}

					// remove footer images from results
					if (result.meta.image && result.meta.image.indexOf('assets/footer') >= 0) {
						result.meta.image = undefined;
					}

					return result;
				}
			});

			const searchInput = document.querySelector('#search input') as HTMLInputElement;
			if (searchInput) {
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
	});

	function triggerSearch() {
		const currentUrl = new URL(window.location.href);
		const searchValue = currentUrl.searchParams.get('q');
		pagefind?.triggerSearch(searchValue);
	}

	afterNavigate(() => {
		triggerSearch();
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
