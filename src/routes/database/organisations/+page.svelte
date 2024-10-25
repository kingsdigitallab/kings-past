<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';
	import {
		locationColumn,
		nameColumn,
		alternativeNamesColumn,
		statusColumn
	} from '$lib/tableColumns';

	export let data;

	const label = 'organisations';
	const { collection, url, placesBySlug } = data;

	const columns = [
		{ header: 'Slug', accessor: 'slug' },
		nameColumn,
		alternativeNamesColumn,
		{ header: 'Type', accessor: 'organisation_type' },
		locationColumn(placesBySlug),
		{
			header: 'Founding date',
			accessor: 'founding_date',
			cell: ({ value }: { value: string }) =>
				value ? new Date(value).toLocaleDateString() : config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item || '';
					}
				}
			}
		},
		{
			header: 'Dissolution date',
			accessor: 'dissolution_date',
			cell: ({ value }: { value: string }) =>
				value ? new Date(value).toLocaleDateString() : config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item || '';
					}
				}
			}
		},
		statusColumn
	];
	const sortBy = { initialSortKeys: [{ id: 'name', order: 'asc' }] };
</script>

<svelte:head>
	<title>Organisations | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Organisations</h1>
	</header>

	<IndexTable data={collection} {columns} {sortBy} {label} {url} />
</article>
