<script lang="ts">
	import { goto } from '$app/navigation';
	import { onMount } from 'svelte';
	import { createEventDispatcher } from 'svelte';
	import { afterNavigate } from '$app/navigation';

	export let pageIndex: number;
	export let pageCount: number;
	export let hasPreviousPage: boolean;
	export let hasNextPage: boolean;
	export let onPrevious: () => void;
	export let onNext: () => void;

	const dispatch = createEventDispatcher();

	async function handlePageChange(direction: 'next' | 'previous') {
		const newPage = direction === 'next' ? pageIndex + 2 : pageIndex;
		const url = new URL(window.location.href);
		url.searchParams.set('page', newPage.toString());

		if (direction === 'next') {
			onNext();
		} else {
			onPrevious();
		}

		await goto(url.toString(), { replaceState: false });
	}

	onMount(checkPageParam);

	function checkPageParam() {
		const url = new URL(window.location.href);
		const pageParam = url.searchParams.get('page');

		if (pageParam) {
			const targetPage = parseInt(pageParam) - 1;
			if (targetPage >= 0 && targetPage < pageCount && targetPage !== pageIndex) {
				dispatch('pageChange', { pageIndex: targetPage });
			}
		}
	}

	afterNavigate(() => {
		checkPageParam();
	});
</script>

{#if hasPreviousPage || hasNextPage}
	<section>
		<nav>
			<ol>
				<li>
					<button disabled={!hasPreviousPage} on:click={() => handlePageChange('previous')}>
						&#10094; Previous
					</button>
				</li>
				<li>Page {pageIndex + 1} of {pageCount}</li>
				<li>
					<button disabled={!hasNextPage} on:click={() => handlePageChange('next')}>
						Next &#10095;
					</button>
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
				border-bottom: var(--size-1) solid var(--powder-blue);
				color: white;
			}
		}
	}
</style>
