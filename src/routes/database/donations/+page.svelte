<script lang="ts">
	import * as config from '$lib/config';
	import EntityIndex from '$lib/components/EntityIndex.svelte';
	import { dateColumn, nameColumn, locationColumn, statusColumn } from '$lib/tableColumns';

	export let data;

	const { collection, url, placesBySlug } = data;
	const label = 'donations';

	const columns = [
		dateColumn,
		nameColumn,
		locationColumn(placesBySlug),
		{
			header: 'Price',
			accessor: 'price',
			cell: ({ value }: { value: number }) => `${value.toLocaleString()}`
		},
		{ header: 'Currency', accessor: 'currency' },
		statusColumn
	];
	const sortBy = { initialSortKeys: [{ id: 'date', order: 'asc' }] };
</script>

<svelte:head>
	<title>Donations | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Donations</h1>
	</header>

	<EntityIndex data={collection} {label} {columns} {sortBy} {url} />
</article>
