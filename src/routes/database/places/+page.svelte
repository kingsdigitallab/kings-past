<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';
	import PlacesMap from '$lib/components/PlacesMap.svelte';
	import { nameColumn, statusColumn } from '$lib/tableColumns';
	import { LucideMap, LucideTable } from 'lucide-svelte';

	export let data;

	const label = 'places';
	const { collection, url } = data;

	const columns = [
		nameColumn,
		{
			header: 'Latitude',
			accessor: 'latitude',
			cell: ({ value }: { value: number }) => (value ? value.toFixed(2) : 'N/A'),
			plugins: {
				sort: {
					getSortValue(item: number) {
						return item || 0;
					}
				}
			}
		},
		{
			header: 'Longitude',
			accessor: 'longitude',
			cell: ({ value }: { value: number }) => (value ? value.toFixed(2) : 'N/A'),
			plugins: {
				sort: {
					getSortValue(item: number) {
						return item || 0;
					}
				}
			}
		},
		statusColumn
	];
	const sortBy = { initialSortKeys: [{ id: 'name', order: 'asc' }] };

	let showMap = true;

	function toggleView() {
		showMap = !showMap;
	}
</script>

<svelte:head>
	<title>Places | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Places</h1>
	</header>

	<section class="view-toggle">
		<button
			on:click={toggleView}
			class:active={showMap}
			class="toggle-button"
			aria-label="Show map view"
		>
			<LucideMap size={24} />
			<span>Show map</span>
		</button>
		<button
			on:click={toggleView}
			class:active={!showMap}
			class="toggle-button"
			aria-label="Show table view"
		>
			<LucideTable size={24} />
			<span>Show table</span>
		</button>
	</section>

	{#if showMap}
		<PlacesMap places={collection} />
	{:else}
		<IndexTable data={collection} {label} {columns} {sortBy} {url} />
	{/if}
</article>

<style>
	.view-toggle {
		align-items: center;
		border-bottom: 1px solid var(--border-light);
		display: flex;
		gap: var(--size-2);
		margin-bottom: var(--section-margin-block);
	}

	.toggle-button {
		color: var(--text-1);
		background-color: var(--surface-4);
		display: flex;
		align-items: center;
		gap: var(--size-2);
		padding: var(--size-2) var(--size-4);
		border: none;
		cursor: pointer;
		transition: background-color 0.3s ease;
	}

	.toggle-button.active {
		background-color: var(--surface-2);
		color: var(--text-2);
	}

	.toggle-button span {
		font-size: var(--font-size-2);
	}
</style>
