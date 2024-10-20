<script lang="ts">
	import PlacePopup from '$lib/components/PlacePopup.svelte';
	import type { Place } from '$lib/types';
	import { LucideMapPin } from 'lucide-svelte';
	import maplibregl from 'maplibre-gl';
	import 'maplibre-gl/dist/maplibre-gl.css';
	import { onDestroy, onMount } from 'svelte';

	export let places: Array<Place>;

	let mapContainer: HTMLElement;
	let map: maplibregl.Map;

	onMount(() => {
		map = new maplibregl.Map({
			container: mapContainer,
			style: 'https://api.maptiler.com/maps/dataviz/style.json?key=brTBbnRxuiKp6PgjwFPr',
			center: [0, 0],
			zoom: 2
		});

		map.addControl(new maplibregl.NavigationControl({ showCompass: true, showZoom: true }));

		map.on('load', () => {
			fitMapToBounds();
		});
	});

	onDestroy(() => {
		if (map) {
			map.remove();
		}
	});

	function fitMapToBounds() {
		const bounds = new maplibregl.LngLatBounds();

		places.forEach((place) => {
			if (place.longitude && place.latitude) {
				bounds.extend([place.longitude, place.latitude]);
			}
		});

		if (!bounds.isEmpty()) {
			map.fitBounds(bounds, {
				padding: 50,
				maxZoom: 15
			});
		}
	}

	function addMarkerAction(node: HTMLElement, place: Place) {
		if (!place.longitude || !place.latitude) return;

		const popupNode = document.createElement('div');
		new PlacePopup({ target: popupNode, props: { place } });
		const popup = new maplibregl.Popup().setDOMContent(popupNode);

		const marker = new maplibregl.Marker({ element: node, anchor: 'bottom' })
			.setLngLat([place.longitude, place.latitude])
			.setPopup(popup)
			.addTo(map);

		return {
			destroy() {
				if (marker) {
					marker.remove();
				}
			}
		};
	}
</script>

<div bind:this={mapContainer} class="map-container">
	{#if map}
		{#each places as place (place.slug)}
			<div
				use:addMarkerAction={place}
				class="map-marker"
				class:draft={place.draft}
				role="complementary"
			>
				<LucideMapPin size={32} />
			</div>
		{/each}
	{/if}
</div>

<style>
	.map-container {
		border: 1px solid var(--border);
		font-family: var(--font-sans);
		height: 600px;
		width: 100%;
	}

	.map-marker {
		box-shadow: var(--shadow-1);
		color: var(--surface-2);
		cursor: pointer;
	}

	.map-marker :global(svg) {
		fill: var(--surface-1);
	}

	.map-marker.draft {
		color: var(--surface-3);
	}
</style>
