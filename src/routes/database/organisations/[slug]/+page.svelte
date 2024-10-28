<script lang="ts">
	import Entity from '$lib/components/EntityDetails.svelte';

	export let data;

	const { organisation, meta, description, sources, members, people } = data;
</script>

<Entity
	entity={organisation}
	entityType="Organisation"
	{meta}
	description={description?.code}
	{sources}
>
	{#if members && members.length > 0}
		<section>
			<h2>Members</h2>
			<ul>
				{#each members as member}
					<li>
						<a href="../people/{member.person}">{people[member.person].name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}
</Entity>
