<script lang="ts">
	import { browser } from '$app/environment';
	import { afterNavigate, pushState } from '$app/navigation';
	import { base } from '$app/paths';
	import { page } from '$app/stores';
	import { PagefindUI } from '@pagefind/default-ui';
	import { onMount } from 'svelte';

	import '@pagefind/default-ui/css/ui.css';

	let pagefind: PagefindUI;

	onMount(() => {
		if (browser) {
			pagefind = new PagefindUI({
				element: '#search',
				autofocus: true,
				bundlePath: `${base}/pagefind/`,
				showEmptyFilters: false
			});

			const searchInput = document.querySelector('#search input') as HTMLInputElement;
			if (searchInput) {
				searchInput.addEventListener('input', (event: Event) => {
					const target = event.target as HTMLInputElement;
					const url = new URL(window.location.href);
					url.searchParams.set('q', target.value);
					pushState(url, '');
				});
			}

			pagefind.triggerSearch($page.url.searchParams.get('q'));
		}
	});

	afterNavigate(() => {
		pagefind?.triggerSearch($page.url.searchParams.get('q'));
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
