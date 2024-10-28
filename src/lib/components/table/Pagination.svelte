<script lang="ts">
	export let pageIndex: number;
	export let pageCount: number;
	export let hasPreviousPage: boolean;
	export let hasNextPage: boolean;
	export let onPrevious: () => void;
	export let onNext: () => void;
</script>

{#if hasPreviousPage || hasNextPage}
	<section>
		<nav>
			<ol>
				<li>
					<button disabled={!hasPreviousPage} on:click={onPrevious}> &#10094; Previous </button>
				</li>
				<li>Page {pageIndex + 1} of {pageCount}</li>
				<li>
					<button disabled={!hasNextPage} on:click={onNext}> Next &#10095; </button>
				</li>
			</ol>
		</nav>
	</section>
{/if}

<style>
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
