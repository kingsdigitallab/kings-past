<script lang="ts">
	import Entity from '$lib/components/entity.svelte';
	import * as config from '$lib/config';

	export let data;

	const { person, meta, description, feature, moments, sources, people, knows, memberOf } = data;
</script>

<svelte:head>
	<title>{person?.name} | {config.title}</title>
</svelte:head>

<Entity
	entityType="Person"
	entityName={person?.name}
	{meta}
	{feature}
	{description}
	{moments}
	{sources}
>
	{#if knows && knows.length}
		<section>
			<h2>Knows</h2>
			<ul>
				{#each knows as knows}
					<li>
						{#if knows.person === person.slug}
							<a href={knows.knows}>{people[knows.knows].name}</a>
						{:else}
							<a href={knows.person}>{people[knows.person].name}</a>
						{/if}
						{#if knows.relationship}
							<span>, {knows.relationship.toLowerCase()}</span>
						{/if}
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if memberOf && memberOf.length}
		<section>
			<h2>Member of</h2>
			<ul>
				{#each memberOf as organisation}
					<li>
						<a href="../organisations/{organisation.slug}">{organisation.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}
</Entity>
