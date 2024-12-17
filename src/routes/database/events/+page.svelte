<script lang="ts">
	import { dateColumn, nameColumn, locationColumn, statusColumn } from '$lib/tableColumns';
	import EntityIndex from '$lib/components/EntityIndex.svelte';

	export let data;

	const label = 'events';
	const { _metadata, collection, url, placesBySlug } = data;

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

<article>
	<header>
		<hgroup>
			<h1>Events</h1>
			<p>{_metadata.excerpt}</p>
		</hgroup>
	</header>

	<EntityIndex data={collection} {columns} {label} {sortBy} {url} />
</article>
