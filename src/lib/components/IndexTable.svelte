<script lang="ts">
	import { LucideArrowDown, LucideArrowUp } from 'lucide-svelte';
	import { createTable, Render, Subscribe } from 'svelte-headless-table';
	import { addPagination, addSortBy } from 'svelte-headless-table/plugins';
	import { readable } from 'svelte/store';

	export let data: any[];
	export let label: string;
	export let columns: any[];
	export let url: string;

	const table = createTable(readable(data), {
		pagination: addPagination({ initialPageSize: 25 }),
		sort: addSortBy({ initialSortKeys: [{ id: 'date', order: 'asc' }] })
	});

	const tableColumns = columns.map((col) => table.column(col));

	const { headerRows, pageRows, tableAttrs, tableBodyAttrs, pluginStates } =
		table.createViewModel(tableColumns);
	const { pageIndex, pageCount, pageSize, hasNextPage, hasPreviousPage } = pluginStates.pagination;
</script>

<section>
	<h2>
		Displaying {$pageIndex * $pageSize + 1} to {Math.min(($pageIndex + 1) * $pageSize, data.length)}
		of {data.length}
		{label}
	</h2>
	<table {...$tableAttrs}>
		<thead>
			{#each $headerRows as headerRow (headerRow.id)}
				<Subscribe rowAttrs={headerRow.attrs()} let:rowAttrs>
					<tr {...rowAttrs}>
						{#each headerRow.cells as cell (cell.id)}
							<Subscribe attrs={cell.attrs()} let:attrs props={cell.props()} let:props>
								<th class="surface-2" {...attrs} on:click={props.sort.toggle}>
									<div>
										<Render of={cell.render()} />
										{#if props.sort.order === 'asc'}
											<LucideArrowUp />
										{:else if props.sort.order === 'desc'}
											<LucideArrowDown />
										{/if}
									</div>
								</th>
							</Subscribe>
						{/each}
					</tr>
				</Subscribe>
			{/each}
		</thead>
		<tbody {...$tableBodyAttrs}>
			{#each $pageRows as row (row.id)}
				<Subscribe rowAttrs={row.attrs()} let:rowAttrs>
					<tr {...rowAttrs}>
						{#each row.cells as cell (cell.id)}
							<Subscribe attrs={cell.attrs()} let:attrs>
								<td class={cell.id} {...attrs}>
									{#if cell.id === 'name'}
										<a href={`${url}/${row.original.slug}`}>{row.original.name}</a>
									{:else}
										<Render of={cell.render()} />
									{/if}
								</td>
							</Subscribe>
						{/each}
					</tr>
				</Subscribe>
			{/each}
		</tbody>
	</table>
</section>

{#if $hasPreviousPage || $hasNextPage}
	<section>
		<nav>
			<ol>
				<li>
					<button disabled={!$hasPreviousPage} on:click={() => $pageIndex--}>
						&#10094; Previous
					</button>
				</li>
				<li>Page {$pageIndex + 1} of {$pageCount}</li>
				<li>
					<button disabled={!$hasNextPage} on:click={() => $pageIndex++}> Next &#10095; </button>
				</li>
			</ol>
		</nav>
	</section>
{/if}

<style>
	h2 {
		max-inline-size: none;
	}

	table {
		width: 100%;
	}

	th div {
		align-items: center;
		cursor: pointer;
		display: flex;
		justify-content: center;
	}

	nav ol {
		display: flex;
		justify-content: space-between;
		width: 100%;
	}

	button {
		font-size: var(--font-size-1);

		&:disabled {
			opacity: 0.6;
			cursor: not-allowed;
			box-shadow: none;

			&:hover {
				box-shadow: none;
				color: unset;
			}
		}
	}
</style>
