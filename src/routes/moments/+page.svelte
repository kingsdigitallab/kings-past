<script lang="ts">
	export let data;
</script>

<article>
	<h1>Moments</h1>

	{#each data.moments as moment}
		<article>
			<h2><a href="moments/{moment.slug}">{moment.title}</a></h2>
			{moment.excerpt}
		</article>
	{/each}
</article>
