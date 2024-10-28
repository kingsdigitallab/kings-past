<script lang="ts">
	import { dev } from '$app/environment';
	import type { Column } from 'svelte-headless-table';
	import { createTable } from 'svelte-headless-table';
	import { addPagination, addSortBy } from 'svelte-headless-table/plugins';
	import { readable, get } from 'svelte/store';
	import TableHeader from './table/TableHeader.svelte';
	import TableBody from './table/TableBody.svelte';
	import CardView from './table/IndexCard.svelte';
	import Pagination from './table/Pagination.svelte';

	interface TableColumn extends Column<any> {
		accessor: string;
		cell?: (props: { value: any }) => any;
	}

	export let data: Record<string, any>[];
	export let columns: TableColumn[];
	export let label: string;
	export let sortBy = {};
	export let url: string;
	export let view: 'table' | 'cards' = 'table';

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

	function formatValue(item: Record<string, any>, column: TableColumn) {
		if (column.cell) {
			return column.cell({ value: item[column.accessor] });
		}
		return item[column.accessor] ?? 'N/A';
	}
</script>

<section>
	<h2>
		Displaying {$pageIndex * $pageSize + 1} to {Math.min(($pageIndex + 1) * $pageSize, data.length)}
		of {data.length}
		{label}
	</h2>

	<Pagination
		pageIndex={$pageIndex}
		pageCount={$pageCount}
		hasPreviousPage={$hasPreviousPage}
		hasNextPage={$hasNextPage}
		onPrevious={() => $pageIndex--}
		onNext={() => $pageIndex++}
	/>

	{#if view === 'table'}
		<table {...$tableAttrs}>
			<thead>
				<TableHeader {headerRows} />
			</thead>
			<TableBody {pageRows} {tableBodyAttrs} {url} />
		</table>
	{:else}
		<table {...$tableAttrs}>
			<thead>
				<TableHeader {headerRows} />
			</thead>
		</table>
		<CardView {pageRows} {columns} {url} />
	{/if}
</section>

<Pagination
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
</style>
