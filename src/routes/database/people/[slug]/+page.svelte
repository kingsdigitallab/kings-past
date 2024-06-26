<script lang="ts">
	import Entity from '$lib/components/entity.svelte';

	export let data;
</script>

<Entity
	entityType="Person"
	entityName={data.person?.name}
	meta={data.meta}
	description={data.description}
	sources={data.sources}
>
	{#if data.knows && data.knows.length}
		<section>
			<h2>Knows</h2>
			<ul>
				{#each data.knows as knows}
					<li>
						{#if knows.person === data.person.slug}
							<a href={knows.knows}>{data.people[knows.knows].name}</a>
						{:else}
							<a href={knows.person}>{data.people[knows.person].name}</a>
						{/if}
						{#if knows.relationship}
							<span>, {knows.relationship.toLowerCase()}</span>
						{/if}
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if data.memberOf && data.memberOf.length}
		<section>
			<h2>Member of</h2>
			<ul>
				{#each data.memberOf as member}
					<li>
						<a href="../organisations/{member.organisation}"
							>{data.organisations[member.organisation].name}</a
						>
					</li>
				{/each}
			</ul>
		</section>
	{/if}
</Entity>
