<script lang="ts">
	import * as config from '$lib/config';
	import { dateColumn, nameColumn, locationColumn, statusColumn } from '$lib/tableColumns';
	import EntityIndex from '$lib/components/EntityIndex.svelte';

	export let data;

	const label = 'events';
	const { collection, url, placesBySlug } = data;

	const columns = [
		nameColumn,
		dateColumn,
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

	<EntityIndex data={collection} {label} {columns} {sortBy} {url} />
</article>
