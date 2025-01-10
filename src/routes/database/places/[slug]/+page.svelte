<script lang="ts">
	import { formatDonationDate } from '$lib';
	import Entity from '$lib/components/EntityDetails.svelte';
	import EventsList from '$lib/components/EventsList.svelte';

	export let data;
	const {
		place,
		meta,
		description,
		donations,
		events,
		feature,
		moments,
		organisations,
		sources,
		urls
	} = data;
</script>

<Entity entity={place} entityType="Place" {meta} {description} {feature} {moments} {sources} {urls}>
	<EventsList {events} />

	{#if donations?.length}
		<h3>Donations made at {place.name}</h3>
		<ul>
			{#each donations as donation}
				<li data-pagefind-filter="Donation">
					<a href="../donations/{donation.slug}">{formatDonationDate(donation)} — {donation.name}</a
					>
				</li>
			{/each}
		</ul>
	{/if}

	{#if organisations?.length}
		<h2>Organisations at {place.name}</h2>
		<ul>
			{#each organisations as organisation}
				<li data-pagefind-filter="Organisation">
					<a href="../organisations/{organisation.slug}">{organisation.name}</a>
				</li>
			{/each}
		</ul>
	{/if}
</Entity>
