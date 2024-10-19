<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';
	import PlacesMap from '$lib/components/PlacesMap.svelte';
	import { nameColumn, statusColumn } from '$lib/tableColumns';

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
</script>

<svelte:head>
	<title>Places | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Places</h1>
	</header>

	<section>
		<h2>Displaying {collection.length} places</h2>
		<PlacesMap places={collection} />
	</section>

	<section>
		<IndexTable data={collection} {label} {columns} {sortBy} {url} />
	</section>
</article>
