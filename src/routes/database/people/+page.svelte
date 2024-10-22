<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';
	import { nameColumn, statusColumn } from '$lib/tableColumns';

	export let data;

	const label = 'people';
	const { people, url } = data;

	const columns = [
		{ header: 'Slug', accessor: 'slug' },
		nameColumn,
		{
			header: 'Alternative names',
			accessor: 'alternative_names',
			cell: ({ value }: { value: string }) => value ?? 'N/A',
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item || '';
					}
				}
			}
		},
		{
			header: 'Gender',
			accessor: 'gender',
			cell: ({ value }: { value: string }) => value ?? 'N/A',
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item || '';
					}
				}
			}
		},
		{
			header: 'Nationality',
			accessor: 'nationality',
			cell: ({ value }: { value: string }) => value ?? 'N/A',
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item || '';
					}
				}
			}
		},
		{
			header: 'Ethnicity',
			accessor: 'ethnicity',
			cell: ({ value }: { value: string }) => value ?? 'N/A',
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item || '';
					}
				}
			}
		},
		{
			header: 'Language',
			accessor: 'language',
			cell: ({ value }: { value: string }) => value ?? 'N/A',
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
	<title>People | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>People</h1>
	</header>

	<IndexTable data={people} {label} {columns} {sortBy} {url} />
</article>
