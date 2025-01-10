<script lang="ts">
	import Entity from '$lib/components/EntityDetails.svelte';
	import DonationsList from '$lib/components/DonationsList.svelte';
	import EventsList from '$lib/components/EventsList.svelte';

	export let data;

	const {
		person,
		meta,
		description,
		donationsAsAgent,
		donationsAsRecipient,
		events,
		feature,
		funded,
		knows,
		memberOf,
		moments,
		sources,
		sameAs,
		urls,
		people
	} = data;
</script>

<Entity
	entity={person}
	entityType="Person"
	{meta}
	{feature}
	{description}
	{moments}
	{sameAs}
	{sources}
	{urls}
>
	<EventsList {events} />

	{#if knows && knows.length}
		<section>
			<h3>Knows</h3>
			<ul>
				{#each knows as knows}
					<li>
						{#if knows.person === person.slug}
							<a href={knows.knows} data-pagefind-filter="Person">{people[knows.knows].name}</a
							>{:else}
							<a href={knows.person} data-pagefind-filter="Person">{people[knows.person].name}</a
							>{/if}{#if knows.relationship},
							<span data-pagefind-filter="Relationship">{knows.relationship.toLowerCase()}</span>
						{/if}
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if memberOf && memberOf.length}
		<section>
			<h3>Member of</h3>
			<ul>
				{#each memberOf as organisation}
					<li data-pagefind-filter="Organisation">
						<a href="../organisations/{organisation.slug}">{organisation.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if funded && funded.length}
		<section>
			<h3>Funded</h3>
			<ul>
				{#each funded as organisation}
					<li data-pagefind-filter="Organisation">
						<a href="../organisations/{organisation.slug}">{organisation.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	<DonationsList entityName={person.name} {donationsAsAgent} {donationsAsRecipient} />
</Entity>
