<script lang="ts">
	import Breadcrumbs from '$lib/components/breadcrumbs.svelte';
	import Footer from '$lib/components/footer.svelte';
	import Header from '$lib/components/header.svelte';
	import PageTransition from '$lib/components/transition.svelte';
	import * as config from '$lib/config';

	import 'open-props/style';
	import 'open-props/normalize';

	import '$css/app.css';
	import { page } from '$app/stores';

	export let data;
</script>

<svelte:head>
	{#if $page.data.title}
		<title>{config.title} | {$page.data.title}</title>
	{:else}
		<title>{config.title}</title>
	{/if}
</svelte:head>

<div class="layout surface-1">
	<Header />

	<main>
		<PageTransition url={data.url}>
			<Breadcrumbs />
			<div class="body">
				<slot />
			</div>
		</PageTransition>
	</main>

	<Footer />
</div>

<style>
	.layout {
		display: grid;
		grid-template-rows: auto 1fr auto;
		height: 100%;
	}

	main {
		max-inline-size: unset;
		padding-inline: var(--header-padding-inline);
	}
</style>
