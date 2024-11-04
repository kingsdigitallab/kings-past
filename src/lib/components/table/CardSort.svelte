<script lang="ts">
	import { LucideArrowDown, LucideArrowUp, LucideArrowUpDown } from 'lucide-svelte';
	import type { HeaderRow } from 'svelte-headless-table';
	import type { PluginStates } from 'svelte-headless-table/plugins';
	import type { Readable } from 'svelte/store';

	export let headerRows: Readable<HeaderRow<any>>;
	export let pluginStates: PluginStates<any>;

	const { sortKeys } = pluginStates.sort;

	function getDisplayLabel(header: any) {
		return header.label || header.column.header || header.id;
	}

	function handleSortChange(e: Event) {
		const target = e.target as HTMLSelectElement;
		const header = sortableHeaders.find((h) => h.id === target.value);
		if (header) {
			sortKeys.clearId(currentSort);
			sortKeys.toggleId(header.id);
		}
	}

	function handleOrderToggle() {
		if (currentSort) {
			sortKeys.toggleId(currentSort);
		} else {
			const selectedHeader = sortableHeaders.find((h) => h.id === selectedColumn);
			if (selectedHeader) {
				sortKeys.toggleId(selectedHeader.id);
			}
		}
	}

	$: sortableHeaders = $headerRows?.[0]?.cells.filter((cell) => cell?.propsForName?.sort) ?? [];
	$: currentSort = $sortKeys[0]?.id;
	$: currentSortOrder = $sortKeys[0]?.order;
	$: selectedColumn = currentSort || (sortableHeaders[0]?.id ?? '');
</script>

<section class="sort-controls">
	{#if sortableHeaders.length > 0}
		<label for="sort-select">Sort by:</label>
		<select id="sort-select" bind:value={selectedColumn} on:change={handleSortChange}>
			{#each sortableHeaders as header}
				<option value={header.id}>
					{getDisplayLabel(header)}
				</option>
			{/each}
		</select>

		<button
			class="order-toggle"
			on:click={handleOrderToggle}
			aria-label="Toggle sort order from ascending to descending to no order"
		>
			{#if currentSortOrder === 'asc'}
				<LucideArrowUp aria-label="Ascending" />
			{:else if currentSortOrder === 'desc'}
				<LucideArrowDown aria-label="Descending" />
			{:else}
				<LucideArrowUpDown aria-label="No order" />
			{/if}
		</button>
	{/if}
</section>

<style>
	.sort-controls {
		align-items: center;
		display: flex;
		gap: var(--size-2);
	}

	select,
	.order-toggle {
		height: var(--size-8);
		padding-inline: var(--size-2);
		border: 1px solid var(--border-light);
		border-radius: var(--radius-2);
	}

	select {
		background-color: unset;
		padding-block: var(--size-1);
	}

	.order-toggle {
		background-color: var(--surface-4);
		color: var(--text-1);
		cursor: pointer;
		display: inline-flex;
		align-items: center;
		justify-content: center;

		&:hover {
			background-color: var(--surface-3);
		}
	}
</style>
