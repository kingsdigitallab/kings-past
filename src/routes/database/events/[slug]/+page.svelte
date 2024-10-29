<script lang="ts">
	import Entity from '$lib/components/EntityDetails.svelte';

	export let data;
	const { event, meta, description, people, organisations, moments, sources, urls } = data;
</script>

<Entity entity={event} entityType="Event" {meta} {description} {moments} {sources} {urls}>
	{#if people?.length}
		<section>
			<h2>People</h2>
			<ul>
				{#each people as person}
					<li><a href="../people/{person.slug}">{person.name}</a></li>
				{/each}
			</ul>
		</section>
	{/if}
	{#if organisations?.length}
		<section>
			<h2>Organisations</h2>
			<ul>
				{#each organisations as organisation}
					<li><a href="../organisations/{organisation.slug}">{organisation.name}</a></li>
				{/each}
			</ul>
		</section>
	{/if}
</Entity>
