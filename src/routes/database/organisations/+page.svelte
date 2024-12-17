<script lang="ts">
	import EntityIndex from '$lib/components/EntityIndex.svelte';
	import * as config from '$lib/config';
	import {
		locationColumn,
		nameColumn,
		alternativeNamesColumn,
		statusColumn
	} from '$lib/tableColumns';

	export let data;

	const label = 'organisations';
	const { _metadata, collection, url, placesBySlug } = data;

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

<article>
	<header>
		<hgroup>
			<h1>Organisations</h1>
			<p>{_metadata.excerpt}</p>
		</hgroup>
	</header>

	<EntityIndex data={collection} {columns} {label} {sortBy} {url} />
</article>
