<script lang="ts">
	import { dev } from '$app/environment';
	import { page } from '$app/stores';
	import Breadcrumbs from '$lib/components/Breadcrumbs.svelte';
	import Footer from '$lib/components/Footer.svelte';
	import Head from '$lib/components/Head.svelte';
	import Header from '$lib/components/Header.svelte';
	import PageTransition from '$lib/components/Transition.svelte';
	import { onMount } from 'svelte';

	import 'open-props/style';
	import 'open-props/normalize';

	import '$css/app.css';

	export let data;

	function shouldTrack() {
		if (navigator.doNotTrack === '1' || navigator.doNotTrack === 'yes') {
			return false;
		}

		return true;
	}

	function initGoatCounter() {
		if (!shouldTrack()) return;

		const script = document.createElement('script');
		script.dataset.goatcounter = 'https://kingspast.goatcounter.com/count';
		script.src = '//gc.zgo.at/count.js';
		script.async = true;
		script.onerror = () => console.warn('Failed to load GoatCounter');

		document.body.appendChild(script);
	}

	onMount(() => {
		if (!dev && shouldTrack()) {
			initGoatCounter();
		}
	});

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
