<script lang="ts">
	import * as config from '$lib/config';
	import Hero from '$lib/components/hero.svelte';
	import Moments from '$lib/components/moments.svelte';

	export let data;
</script>

<svelte:head>
	<title>{config.title}</title>
</svelte:head>

<Hero />

<Moments moments={data.moments} />
