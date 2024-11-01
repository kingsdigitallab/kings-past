<script lang="ts">
	import * as config from '$lib/config';
	import EntityIndex from '$lib/components/EntityIndex.svelte';
	import { dateColumn, nameColumn, locationColumn, statusColumn } from '$lib/tableColumns';

	export let data;

	const { _metadata, collection, url, placesBySlug } = data;
	const label = 'donations';

	const columns = [
		nameColumn,
		dateColumn,
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

<article>
	<header>
		<hgroup>
			<h1>Donations</h1>
			<p>{_metadata.excerpt}</p>
		</hgroup>
	</header>

	<EntityIndex data={collection} {label} {columns} {sortBy} {url} />
</article>
