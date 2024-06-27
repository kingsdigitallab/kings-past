<script lang="ts">
	import Entity from '$lib/components/entity.svelte';

	export let data;
</script>

<Entity
	entityType="Organisation"
	entityName={data.item.name}
	meta={data.meta}
	description={data.description?.code}
	sources={data.sources}
>
	{#if data.members}
		<section>
			<h2>Members</h2>
			<ul>
				{#each data.members as member}
					<li>
						<a href="../people/{member.person}">{data.people[member.person].name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}
</Entity>
