<script lang="ts">
	import Breadcrumbs from '$lib/components/breadcrumbs.svelte';
	import Footer from '$lib/components/footer.svelte';
	import Header from '$lib/components/header.svelte';
	import PageTransition from '$lib/components/transition.svelte';

	import 'open-props/style';
	import 'open-props/normalize';

	import '$css/app.css';

	export let data;
</script>

<div class="layout">
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
		max-inline-size: var(--size-xxl);
		padding-inline: var(--size-9);
	}
</style>
