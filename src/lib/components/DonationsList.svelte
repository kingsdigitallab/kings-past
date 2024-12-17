<script lang="ts">
	import type { Donation } from '$lib/types';

	export let entityName: string;
	export let donationsAsAgent: Donation[] | undefined;
	export let donationsAsRecipient: Donation[] | undefined;
</script>

{#if donationsAsAgent?.length || donationsAsRecipient?.length}
	<section>
		<h2>Donations</h2>
		{#if donationsAsAgent?.length}
			<section>
				<h3>Made by {entityName}</h3>
				<ul>
					{#each donationsAsAgent as donation}
						<li data-pagefind-filter="Donation">
							<a href="../donations/{donation.slug}">{donation.name}</a>
						</li>
					{/each}
				</ul>
			</section>
		{/if}
		{#if donationsAsRecipient?.length}
			<section>
				<h3>Received by {entityName}</h3>
				<ul>
					{#each donationsAsRecipient as donation}
						<li data-pagefind-filter="Donation">
							<a href="../donations/{donation.slug}">{donation.name}</a>
						</li>
					{/each}
				</ul>
			</section>
		{/if}
	</section>
{/if}
