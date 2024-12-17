<script lang="ts">
	import { Render, Subscribe } from 'svelte-headless-table';
	import type { BodyRow } from 'svelte-headless-table';
	import type { Readable } from 'svelte/store';

	export let pageRows: Readable<BodyRow<any, any>[]>;
	export let tableBodyAttrs: Readable<Record<string, any>>;
	export let url: string;
</script>

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
