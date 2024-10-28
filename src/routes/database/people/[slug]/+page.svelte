<script lang="ts">
	import { getEventDate } from '$lib';
	import Entity from '$lib/components/EntityDetails.svelte';
	import * as config from '$lib/config';

	export let data;

	const {
		person,
		meta,
		description,
		donations,
		events,
		feature,
		funded,
		knows,
		memberOf,
		moments,
		sources,
		people,
		sameAs,
		urls
	} = data;
</script>

<svelte:head>
	<title>{person?.name} | {config.title}</title>
</svelte:head>

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
	{#if events && events.length}
		<section>
			<h2>Events</h2>
			<ul>
				{#each events as event}
					<li>
						<a href="../events/{event.slug}">{getEventDate(event)} — {event.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}

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

	{#if funded && funded.length}
		<section>
			<h2>Funded</h2>
			<ul>
				{#each funded as organisation}
					<li>
						<a href="../organisations/{organisation.slug}">{organisation.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if donations && donations.length}
		<section>
			<h2>Donations</h2>
			<ul>
				{#each donations as donation}
					<li>
						<a href="../donations/{donation.slug}">{donation.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}
</Entity>
