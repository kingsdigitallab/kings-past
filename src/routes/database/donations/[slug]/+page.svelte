<script lang="ts">
	export let data;

	const { donation } = data;
</script>

<article>
	<h1>{donation.name}</h1>
	{#if donation.description}
		<p>{donation.description}</p>
	{/if}
</article>
