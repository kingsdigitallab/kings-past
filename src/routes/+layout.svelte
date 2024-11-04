<script lang="ts">
	import { page } from '$app/stores';
	import Breadcrumbs from '$lib/components/Breadcrumbs.svelte';
	import Footer from '$lib/components/Footer.svelte';
	import Head from '$lib/components/Head.svelte';
	import Header from '$lib/components/Header.svelte';
	import PageTransition from '$lib/components/Transition.svelte';

	import 'open-props/style';
	import 'open-props/normalize';

	import '$css/app.css';

	export let data;

	$: metadata = $page.data?._metadata || {};
</script>

<svelte:head>
	<Head {metadata} />
</svelte:head>

<div class="layout-container">
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
</div>

<style>
	.layout-container {
		background: var(--surface-4);
		display: flex;
		justify-content: center;
		min-height: 100%;
	}

	.layout {
		display: grid;
		grid-template-rows: auto 1fr auto;
		max-inline-size: var(--size-xl);
		width: 100%;
	}

	main {
		max-inline-size: unset;
		padding-inline: var(--header-padding-inline);
	}

	@media (max-width: 768px) {
		.layout {
			display: block;
		}
	}
</style>
