<script lang="ts">
	import { LucideArrowDown, LucideArrowUp } from 'lucide-svelte';
	import { Render, Subscribe } from 'svelte-headless-table';
	import type { HeaderRow } from 'svelte-headless-table';
	import type { Readable } from 'svelte/store';

	export let headerRows: Readable<HeaderRow<any, any>[]>;
</script>

{#each $headerRows as headerRow (headerRow.id)}
	<Subscribe rowAttrs={headerRow.attrs()} let:rowAttrs>
		<tr {...rowAttrs}>
			{#each headerRow.cells as cell (cell.id)}
				<Subscribe attrs={cell.attrs()} let:attrs props={cell.props()} let:props>
					<th class="surface-2" {...attrs} on:click={props.sort?.toggle}>
						<div>
							<Render of={cell.render()} />
							{#if props.sort?.order === 'asc'}
								<LucideArrowUp />
							{:else if props.sort?.order === 'desc'}
								<LucideArrowDown />
							{/if}
						</div>
					</th>
				</Subscribe>
			{/each}
		</tr>
	</Subscribe>
{/each}

<style>
	th div {
		align-items: center;
		cursor: pointer;
		display: flex;
		justify-content: center;
	}
</style>
