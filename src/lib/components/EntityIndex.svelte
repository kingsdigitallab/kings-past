<script lang="ts">
	import { dev } from '$app/environment';
	import type { Column } from 'svelte-headless-table';
	import { createTable } from 'svelte-headless-table';
	import { addPagination, addSortBy } from 'svelte-headless-table/plugins';
	import { readable } from 'svelte/store';
	import TableHeader from './table/TableHeader.svelte';
	import TableBody from './table/TableBody.svelte';
	import IndexCard from './table/IndexCard.svelte';
	import Pagination from './table/Pagination.svelte';
	import { LucideTable, LucideLayoutGrid, LucideMap } from 'lucide-svelte';

	interface TableColumn extends Column<any> {
		accessor: string;
		cell?: (props: { value: any }) => any;
	}

	interface ViewOption {
		value: string;
		label: string;
		icon: typeof LucideTable | typeof LucideLayoutGrid | typeof LucideMap;
	}

	export let data: Record<string, any>[];
	export let columns: TableColumn[];
	export let label: string;
	export let sortBy = {};
	export let url: string;
	export let view = 'cards';
	export let viewOptions: ViewOption[] = [
		{ value: 'cards', label: 'Show cards', icon: LucideLayoutGrid },
		{ value: 'table', label: 'Show table', icon: LucideTable }
	];

	const table = createTable(readable(data), {
		pagination: addPagination({ initialPageSize: 25 }),
		sort: addSortBy(sortBy)
	});

	const tableColumns = columns
		.filter((col) => col.accessor !== 'status' || dev)
		.filter((col) => col.accessor !== 'slug')
		.map((col) => table.column(col));

	const { headerRows, pageRows, tableAttrs, tableBodyAttrs, pluginStates } =
		table.createViewModel(tableColumns);
	const { pageIndex, pageCount, pageSize, hasNextPage, hasPreviousPage } = pluginStates.pagination;

	function handlePageChange(event: CustomEvent<{ pageIndex: number }>) {
		$pageIndex = event.detail.pageIndex;
	}

	function toggleView() {
		view = view === 'table' ? 'cards' : 'table';
	}
</script>

<section>
	<hgroup>
		<h2>
			Displaying {$pageIndex * $pageSize + 1} to {Math.min(
				($pageIndex + 1) * $pageSize,
				data.length
			)}
			of {data.length}
			{label}
		</h2>
	</hgroup>

	<section class="view-toggle">
		{#each viewOptions as option}
			<button
				class:active={view === option.value}
				on:click={() => (view = option.value)}
				aria-label={option.label}
			>
				<svelte:component this={option.icon} size={24} />
				<span>{option.label}</span>
			</button>
		{/each}
	</section>

	<Pagination
		pageIndex={$pageIndex}
		pageCount={$pageCount}
		hasPreviousPage={$hasPreviousPage}
		hasNextPage={$hasNextPage}
		onPrevious={() => $pageIndex--}
		onNext={() => $pageIndex++}
		on:pageChange={handlePageChange}
	/>

	{#if view === 'table'}
		<table {...$tableAttrs}>
			<thead>
				<TableHeader {headerRows} />
			</thead>
			<TableBody {pageRows} {tableBodyAttrs} {url} />
		</table>
	{:else if view === 'cards'}
		<table {...$tableAttrs}>
			<thead>
				<TableHeader {headerRows} />
			</thead>
		</table>
		<IndexCard {pageRows} {columns} {url} />
	{:else}
		<slot name="map-view" />
	{/if}
</section>

<Pagination
	label="Pagination at the bottom of the page"
	pageIndex={$pageIndex}
	pageCount={$pageCount}
	hasPreviousPage={$hasPreviousPage}
	hasNextPage={$hasNextPage}
	onPrevious={() => $pageIndex--}
	onNext={() => $pageIndex++}
/>

<style>
	h2 {
		max-inline-size: none;
	}

	table {
		width: 100%;
	}

	.view-toggle {
		align-items: center;
		border-bottom: 1px solid var(--border-light);
		display: flex;
		gap: var(--size-2);
		margin-bottom: var(--section-margin-block);
	}

	.view-toggle button {
		color: var(--text-1);
		background-color: var(--surface-4);
		display: flex;
		align-items: center;
		gap: var(--size-2);
		padding: var(--size-2) var(--size-4);
		border: none;
		cursor: pointer;
		transition: background-color 0.3s ease;
	}

	.view-toggle button.active {
		background-color: var(--surface-2);
		color: var(--text-2);
	}

	.view-toggle button span {
		font-size: var(--font-size-2);
	}
</style>
