<script lang="ts">
	import Hero from '$lib/components/hero.svelte';
	import Moments from '$lib/components/moments.svelte';

	export let data;
</script>

<Hero />

<Moments moments={data.moments} />
