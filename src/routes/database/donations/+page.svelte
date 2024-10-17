<script lang="ts">
	import * as config from '$lib/config';
	import { createTable, Render, Subscribe } from 'svelte-headless-table';
	import { readable } from 'svelte/store';

	export let data;

	const { collection } = data;

	const table = createTable(readable(collection));
	const columns = table.createColumns([
		table.column({
			header: 'Slug',
			accessor: 'slug'
		}),
		table.column({
			header: 'Start Date',
			accessor: 'start_date'
		}),
		table.column({
			header: 'End Date',
			accessor: 'end_date'
		}),
		table.column({
			header: 'Name',
			accessor: 'name'
		}),
		table.column({
			header: 'Description',
			accessor: 'description'
		})
	]);

	const { headerRows, rows, tableAttrs, tableBodyAttrs } = table.createViewModel(columns);

	function getDate(item: any) {
		if (item.start_date !== item.end_date) {
			return `${item.start_date} - ${item.end_date}`;
		}

		return item.start_date;
	}
</script>

<svelte:head>
	<title>Donations | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Donations</h1>
	</header>

	<section>
		<table {...$tableAttrs}>
			<thead>
				{#each $headerRows as headerRow (headerRow.id)}
					<Subscribe rowAttrs={headerRow.attrs()} let:rowAttrs>
						<tr {...rowAttrs}>
							{#each headerRow.cells as cell (cell.id)}
								<Subscribe attrs={cell.attrs()} let:attrs>
									<th {...attrs}>
										<Render of={cell.render()} />
									</th>
								</Subscribe>
							{/each}
						</tr>
					</Subscribe>
				{/each}
			</thead>
			<tbody {...$tableBodyAttrs}>
				{#each $rows as row (row.id)}
					<Subscribe rowAttrs={row.attrs()} let:rowAttrs>
						<tr {...rowAttrs}>
							{#each row.cells as cell (cell.id)}
								<Subscribe attrs={cell.attrs()} let:attrs>
									<td {...attrs}>
										<Render of={cell.render()} />
									</td>
								</Subscribe>
							{/each}
						</tr>
					</Subscribe>
				{/each}
			</tbody>
		</table>
	</section>
</article>

<style>
	a {
		display: flex;

		&:is(:hover) {
			text-decoration: none;
		}
	}

	h2,
	li {
		max-inline-size: none;
		text-wrap: auto;
	}

	.excerpt {
		max-inline-size: none;
	}
</style>
