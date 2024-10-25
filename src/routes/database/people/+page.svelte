<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';
	import IndexCards from '$lib/components/IndexCards.svelte';
	import { nameColumn, alternativeNamesColumn, statusColumn } from '$lib/tableColumns';
	import { LucideTable, LucideLayoutGrid } from 'lucide-svelte';

	export let data;

	const label = 'people';
	const { people, url } = data;

	let viewMode: 'table' | 'cards' = 'table';

	const columns = [
		{ header: 'Slug', accessor: 'slug' },
		nameColumn,
		alternativeNamesColumn,
		{
			header: 'Gender',
			accessor: 'gender',
			cell: ({ value }: { value: string }) => value ?? config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return (item || '').toLowerCase();
					}
				}
			}
		},
		{
			header: 'Nationality',
			accessor: 'nationality',
			cell: ({ value }: { value: string }) => value ?? config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return (item || '').toLowerCase();
					}
				}
			}
		},
		{
			header: 'Ethnicity',
			accessor: 'ethnicity',
			cell: ({ value }: { value: string }) => value ?? config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return (item || '').toLowerCase();
					}
				}
			}
		},
		{
			header: 'Language',
			accessor: 'language',
			cell: ({ value }: { value: string }) => value ?? config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return (item || '').toLowerCase();
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
		<div class="view-toggle">
			<button class:active={viewMode === 'table'} on:click={() => (viewMode = 'table')}
				><LucideTable />Table view</button
			>
			<button class:active={viewMode === 'cards'} on:click={() => (viewMode = 'cards')}
				><LucideLayoutGrid />Card view</button
			>
		</div>
	</header>

	{#if viewMode === 'table'}
		<IndexTable data={people} {label} {columns} {sortBy} {url} />
	{:else}
		<IndexCards data={people} {columns} {url} />
	{/if}
</article>

<style>
	.view-toggle {
		margin-bottom: 1rem;
	}

	.view-toggle button {
		padding: 0.5rem 1rem;
		margin-right: 0.5rem;
		background-color: #f0f0f0;
		border: none;
		border-radius: 4px;
		cursor: pointer;
	}

	.view-toggle button.active {
		background-color: #007bff;
		color: white;
	}
</style>
