<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';
	import { dateColumn, nameColumn, locationColumn, statusColumn } from '$lib/tableColumns';

	export let data;

	const label = 'events';
	const { collection, url, placesBySlug } = data;

	const columns = [
		dateColumn,
		nameColumn,
		{
			header: 'Type',
			accessor: 'event_type'
		},
		locationColumn(placesBySlug),
		statusColumn
	];
	const sortBy = { initialSortKeys: [{ id: 'date', order: 'asc' }] };
</script>

<svelte:head>
	<title>Events | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Events</h1>
	</header>

	<IndexTable data={collection} {label} {columns} {sortBy} {url} />
</article>
