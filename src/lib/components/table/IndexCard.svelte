<script lang="ts">
	import type { BodyRow } from 'svelte-headless-table';
	import type { Column } from 'svelte-headless-table';
	import type { Readable } from 'svelte/store';

	export let pageRows: Readable<BodyRow<any, any>[]>;
	export let columns: Column<any>[];
	export let url: string;

	function formatValue(item: Record<string, any>, column: Column<any>) {
		if (column.cell) {
			return column.cell({ value: item[column.accessor] });
		}
		return item[column.accessor] ?? 'N/A';
	}
</script>

<div class="cards-container">
	{#each $pageRows as row (row.id)}
		{@const item = row.original}
		<article class="card">
			<header>
				<h2><a href={`${url}/${item.slug}`}>{item.name}</a></h2>
			</header>
			<dl>
				{#each columns as column}
					{#if column.header !== 'Name' && column.header !== 'Slug'}
						<div class="dl-item">
							<dt>{column.header}</dt>
							<dd>{formatValue(item, column)}</dd>
						</div>
					{/if}
				{/each}
			</dl>
		</article>
	{/each}
</div>

<style>
	.cards-container {
		display: grid;
		grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
		gap: var(--size-4);
	}

	.card {
		background-color: #f0f0f0;
		border-radius: var(--radius-2);
		padding: var(--size-4);
		transition: box-shadow 0.3s ease;
	}

	.card:hover {
		box-shadow: var(--shadow-3);
	}

	.card h2 {
		font-size: var(--font-size-4);
		margin-top: 0;
		margin-bottom: var(--size-3);
	}

	dl {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: var(--size-2) var(--size-4);
		margin: 0;
	}

	.dl-item {
		break-inside: avoid;
		page-break-inside: avoid;
	}

	dt {
		font-weight: bold;
		font-size: var(--font-size-1);
		color: var(--color-text-muted);
	}

	dd {
		margin-left: 0;
		margin-bottom: var(--size-1);
		font-size: var(--font-size-2);
	}
</style>
