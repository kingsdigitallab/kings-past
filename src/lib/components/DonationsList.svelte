<script lang="ts">
	import type { Donation } from '$lib/types';

	export let entityName: string;
	export let donationsAsAgent: Donation[] | undefined;
	export let donationsAsRecipient: Donation[] | undefined;
</script>

{#if donationsAsAgent?.length || donationsAsRecipient?.length}
	<section>
		<h3>Donations</h3>
		{#if donationsAsAgent?.length}
			<section>
				<h4>Made by {entityName}</h4>
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
				<h4>Received by {entityName}</h4>
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
