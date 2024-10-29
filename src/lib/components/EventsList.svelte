<script lang="ts">
	import { formatEventDate } from '$lib';
	import type { Event } from '$lib/types';

	export let events: Event[] | undefined;
</script>

{#if events?.length}
	<section>
		<h2>Events</h2>
		<ul>
			{#each events as event}
				<li>
					<a href="../events/{event.slug}">{formatEventDate(event)} — {event.name}</a>
				</li>
			{/each}
		</ul>
	</section>
{/if}
