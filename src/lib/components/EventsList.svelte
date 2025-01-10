<script lang="ts">
	import { formatEventDate } from '$lib';
	import type { Event, Place } from '$lib/types';

	export let events: Event[] | undefined;
	export let placesBySlug: Record<string, Place> | undefined = undefined;
</script>

{#if events?.length}
	<section>
		<h3>Events</h3>
		<ul>
			{#each events as event}
				<li data-pagefind-filter="Event">
					<a href="../events/{event.slug}">{event.name}</a>,
					<span>{formatEventDate(event)}</span
					>{#if event.location && placesBySlug && placesBySlug[event.location]},
						<a href="../places/{event.location}"
							>{placesBySlug[event.location].name || event.location}</a
						>
					{/if}
				</li>
			{/each}
		</ul>
	</section>
{/if}
