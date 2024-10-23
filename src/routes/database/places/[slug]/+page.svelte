<script lang="ts">
	export let data;

	const { place } = data;
</script>

<article>
	<h1>{place.name}</h1>
	{#if place.description}
		<p>{place.description}</p>
	{/if}
</article>
