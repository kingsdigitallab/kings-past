<script lang="ts">
	export let data;

	const { event } = data;
</script>

<article>
	<h1>{event.name}</h1>
	{#if event.description}
		<p>{event.description}</p>
	{/if}
</article>
