<script lang="ts">
	import * as config from '$lib/config';
	import { createTable, Render, Subscribe } from 'svelte-headless-table';
	import { addPagination } from 'svelte-headless-table/plugins';
	import { readable } from 'svelte/store';

	export let data;

	const { collection } = data;

	const table = createTable(readable(collection), {
		pagination: addPagination({ initialPageSize: 5 })
	});
	const columns = table.createColumns([
		table.column({
			header: 'Start date',
			accessor: 'start_date'
		}),
		table.column({
			header: 'End date',
			accessor: 'end_date'
		}),
		table.column({
			header: 'Name',
			accessor: (item) => ({ slug: item.slug, name: item.name }),
			id: 'name'
		}),
		table.column({
			header: 'Description',
			accessor: 'description',
			cell: ({ value }) => value?.slice(0, 50) + '…'
		})
	]);

	const { headerRows, pageRows, tableAttrs, tableBodyAttrs, pluginStates } =
		table.createViewModel(columns);
	const { pageIndex, pageCount, pageSize, hasNextPage, hasPreviousPage } = pluginStates.pagination;
</script>

<svelte:head>
	<title>Donations | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Donations</h1>
	</header>

	<section>
		<h2>
			Displaying {$pageIndex * $pageSize + 1} to {Math.min(
				($pageIndex + 1) * $pageSize,
				collection.length
			)} of {collection.length}
			donations
		</h2>
		<table {...$tableAttrs}>
			<thead>
				{#each $headerRows as headerRow (headerRow.id)}
					<Subscribe rowAttrs={headerRow.attrs()} let:rowAttrs>
						<tr {...rowAttrs}>
							{#each headerRow.cells as cell (cell.id)}
								<Subscribe attrs={cell.attrs()} let:attrs>
									<th class="surface-2" {...attrs}>
										<Render of={cell.render()} />
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
											<a href={`${data.url}/${cell.value.slug}`}>{cell.value.name}</a>
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
</article>

<style>
	h2 {
		max-inline-size: none;
	}

	table {
		width: 100%;
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
