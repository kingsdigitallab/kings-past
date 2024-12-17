<script lang="ts">
	import Hero from '$lib/components/Hero.svelte';
	import Moments from '$lib/components/Moments.svelte';

	export let data;
</script>

<Hero />

<Moments moments={data.moments} />
