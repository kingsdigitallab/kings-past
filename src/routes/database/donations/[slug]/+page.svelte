<script lang="ts">
	import Entity from '$lib/components/EntityDetails.svelte';
	export let data;

	const {
		donation,
		meta,
		description,
		donorsPerson,
		donorsOrganisation,
		recipientsPerson,
		recipientsOrganisation,
		moments,
		sources,
		urls
	} = data;
</script>

<Entity entity={donation} entityType="Donation" {meta} {description} {moments} {sources} {urls}>
	{#if donorsPerson?.length || donorsOrganisation?.length}
		<section>
			<h2>Donors</h2>
			{#if donorsPerson?.length}
				<h3>People</h3>
				<ul>
					{#each donorsPerson as donor}
						<li data-pagefind-filter="Person"><a href="../people/{donor.slug}">{donor.name}</a></li>
					{/each}
				</ul>
			{/if}
			{#if donorsOrganisation?.length}
				<h3>Organisations</h3>
				<ul>
					{#each donorsOrganisation as donor}
						<li data-pagefind-filter="Organisation">
							<a href="../organisations/{donor.slug}">{donor.name}</a>
						</li>
					{/each}
				</ul>
			{/if}
		</section>
	{/if}
	{#if recipientsPerson?.length || recipientsOrganisation?.length}
		<section>
			<h2>Recipients</h2>
			{#if recipientsPerson?.length}
				<h3>People</h3>
				<ul>
					{#each recipientsPerson as recipient}
						<li data-pagefind-filter="Person">
							<a href="../people/{recipient.slug}">{recipient.name}</a>
						</li>
					{/each}
				</ul>
			{/if}
			{#if recipientsOrganisation?.length}
				<h3>Organisations</h3>
				<ul>
					{#each recipientsOrganisation as recipient}
						<li data-pagefind-filter="Organisation">
							<a href="../organisations/{recipient.slug}">{recipient.name}</a>
						</li>
					{/each}
				</ul>
			{/if}
		</section>
	{/if}
</Entity>
