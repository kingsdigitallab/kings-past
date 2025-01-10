<script lang="ts">
	import DonationsList from '$lib/components/DonationsList.svelte';
	import Entity from '$lib/components/EntityDetails.svelte';
	import EventsList from '$lib/components/EventsList.svelte';

	export let data;

	const {
		organisation,
		meta,
		description,
		donationsAsAgent,
		donationsAsRecipient,
		events,
		personMembers,
		organisationMembers,
		memberOf,
		moments,
		sameAs,
		sources,
		urls,
		placesBySlug
	} = data;
</script>

<Entity
	entity={organisation}
	entityType="Organisation"
	{meta}
	{description}
	{moments}
	{sameAs}
	{sources}
	{urls}
>
	{#if personMembers?.length || organisationMembers?.length}
		<section>
			<h3>Members</h3>
			{#if personMembers?.length}
				<h4>People</h4>
				<ul>
					{#each personMembers as person}
						<li data-pagefind-filter="Person">
							<a href="../people/{person.slug}">{person.name}</a>
						</li>
					{/each}
				</ul>
			{/if}
			{#if organisationMembers?.length}
				<h4>Organisations</h4>
				<ul>
					{#each organisationMembers as organisation}
						<li data-pagefind-filter="Organisation">
							<a href="../organisations/{organisation.slug}">{organisation.name}</a>
						</li>
					{/each}
				</ul>
			{/if}
		</section>
	{/if}
	{#if memberOf?.length}
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

	<EventsList {events} {placesBySlug} />

	<DonationsList entityName={organisation.name} {donationsAsAgent} {donationsAsRecipient} />
</Entity>
