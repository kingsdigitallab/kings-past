<script lang="ts">
	import { formatEventDate } from '$lib';
	import type { Event } from '$lib/types';

	export let events: Event[] | undefined;
</script>

{#if events?.length}
	<section>
		<h3>Events</h3>
		<ul>
			{#each events as event}
				<li data-pagefind-filter="Event">
					<a href="../events/{event.slug}">{event.name}, <span>{formatEventDate(event)} </span></a>
				</li>
			{/each}
		</ul>
	</section>
{/if}
