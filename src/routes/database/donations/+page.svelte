<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';
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
			cell: ({ value, row }: { value: number; row: { original: { currency: string } } }) =>
				`${value.toLocaleString()} ${row.original.currency}`
		},
		{ header: 'Currency', accessor: 'currency' },
		statusColumn
	];
</script>

<svelte:head>
	<title>Donations | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Donations</h1>
	</header>

	<IndexTable data={collection} {label} {columns} {url} />
</article>
