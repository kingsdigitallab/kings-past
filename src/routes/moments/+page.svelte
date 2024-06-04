<script lang="ts">
	export let data;
</script>

<article>
	<h1>Moments</h1>

	{#each data.moments as moment}
		<article class="surface-1">
			<h2><a href="moments/{moment.slug}">{moment.title}</a></h2>
			{moment.excerpt}
		</article>
	{/each}
</article>

<style>
	article {
		margin-bottom: 2rem;

		& h2 {
			max-inline-size: none;
		}

		&:is(a:hover) {
			text-decoration: none;
		}
	}
</style>
