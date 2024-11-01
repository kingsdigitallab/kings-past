<script lang="ts">
	import Head from '$lib/components/Head.svelte';

	export let title;
	export let excerpt;
	export let tags;

	const metadata = { title, excerpt, tags };

	$$props;
</script>

<svelte:head>
	<Head {metadata} />
</svelte:head>

<slot />
