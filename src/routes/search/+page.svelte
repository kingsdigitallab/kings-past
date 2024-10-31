<script lang="ts">
	import { browser } from '$app/environment';
	import { base } from '$app/paths';
	import { PagefindUI } from '@pagefind/default-ui';
	import { onMount } from 'svelte';

	import '@pagefind/default-ui/css/ui.css';

	onMount(() => {
		if (browser) {
			new PagefindUI({
				element: '#search',
				autofocus: true,
				bundlePath: `${base}/pagefind/`,
				showEmptyFilters: false
			});
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
