<script lang="ts">
	import Entity from '$lib/components/EntityDetails.svelte';
	import DonationsList from '$lib/components/DonationsList.svelte';

	export let data;

	const {
		organisation,
		meta,
		description,
		donationsAsAgent,
		donationsAsRecipient,
		personMembers,
		organisationMembers,
		memberOf,
		moments,
		sameAs,
		sources,
		urls
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
			<h2>Members</h2>
			{#if personMembers?.length}
				<h3>People</h3>
				<ul>
					{#each personMembers as person}
						<li>
							<a href="../people/{person.slug}">{person.name}</a>
						</li>
					{/each}
				</ul>
			{/if}
			{#if organisationMembers?.length}
				<h3>Organisations</h3>
				<ul>
					{#each organisationMembers as organisation}
						<li>
							<a href="../organisations/{organisation.slug}">{organisation.name}</a>
						</li>
					{/each}
				</ul>
			{/if}
		</section>
	{/if}
	{#if memberOf?.length}
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

	<DonationsList entityName={organisation.name} {donationsAsAgent} {donationsAsRecipient} />
</Entity>
