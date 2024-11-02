<script lang="ts">
	import * as config from '$lib/config';
	import EntityIndex from '$lib/components/EntityIndex.svelte';
	import PlacesMap from '$lib/components/PlacesMap.svelte';
	import { nameColumn, alternativeNamesColumn, statusColumn } from '$lib/tableColumns';
	import { LucideMap, LucideTable, LucideLayoutGrid } from 'lucide-svelte';

	export let data;

	const label = 'places';
	const { _metadata, collection, url } = data;

	const columns = [
		nameColumn,
		alternativeNamesColumn,
		{
			header: 'Latitude',
			accessor: 'latitude',
			cell: ({ value }: { value: number }) => (value ? value.toFixed(2) : config.EMPTY_PLACEHOLDER),
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
			cell: ({ value }: { value: number }) => (value ? value.toFixed(2) : config.EMPTY_PLACEHOLDER),
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

	let view = 'map';

	const viewOptions = [
		{ value: 'map', label: 'Show map', icon: LucideMap },
		{ value: 'cards', label: 'Show cards', icon: LucideLayoutGrid },
		{ value: 'table', label: 'Show table', icon: LucideTable }
	];
</script>

<article>
	<header>
		<hgroup>
			<h1>Places</h1>
			<p>{_metadata.excerpt}</p>
		</hgroup>
	</header>

	<EntityIndex data={collection} {columns} {label} {sortBy} {url} bind:view {viewOptions}>
		<div slot="map-view">
			<PlacesMap places={collection} />
		</div>
	</EntityIndex>
</article>
