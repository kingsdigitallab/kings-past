<script lang="ts">
	import type { Place } from '$lib/types';

	export let place: Place;
</script>

<div class="place-popup">
	<h3><a href="../places/{place.slug}">{place.name}</a></h3>
	<p><strong>Status:</strong> {place.draft ? 'draft' : 'edited'}</p>
	<p>{place.description || 'No description available.'}</p>
</div>

<style>
	:global(.maplibregl-popup-content button) {
		color: var(--text-1);

		&:hover {
			box-shadow: var(--shadow-2);
		}
	}

	:global(.maplibregl-popup-content button:hover) {
		box-shadow: var(--shadow-2);
	}
</style>
