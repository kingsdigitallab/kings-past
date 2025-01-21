<script lang="ts">
	import { base } from '$app/paths';
	import { page } from '$app/stores';

	export let title: string | undefined;
	export let replaceLast: boolean = false;

	let breadcrumbs: Array<{ label: string; href: string }> = [];

	$: {
		const parts = $page.url.pathname
			.split('/')
			.map((part) => part.trim())
			.filter((part) => part !== '')
			.filter((part) => part !== 'kings-past');

		if (parts.length > 1) {
			let currentPath = base;
			breadcrumbs = parts.map((part: string) => {
				currentPath = `${currentPath}/${part}`;
				return {
					label: part.toLowerCase().replace(/\b\w/g, (s) => s.toUpperCase()),
					href: currentPath
				};
			});

			if (title && replaceLast) {
				breadcrumbs[breadcrumbs.length - 2].label = title;
			}

			breadcrumbs.unshift({ label: 'Home', href: `${base}/` });
		}
	}
</script>

{#if $page.url.pathname !== '/' && $page.url.pathname !== '/kings-past/'}
	<nav aria-label="Breadcrumb" class="surface-1">
		<ol>
			{#each breadcrumbs.slice(0, -1) as crumb, index}
				<li>
					<a href={crumb.href}>{crumb.label}</a>
				</li>
			{/each}
		</ol>
	</nav>
{/if}

<style>
	nav {
		align-content: center;
		min-height: calc(var(--header-height) / 2);
		margin-right: calc(-50vw + 50%);
		margin-top: var(--size-2);
		width: 80%;
	}

	nav ol {
		align-items: center;
		display: flex;
		gap: var(--size-2);
	}

	nav ol li {
		align-items: baseline;
		display: flex;
		max-inline-size: unset;
		gap: var(--size-2);
	}

	nav ol li:not(:last-child)::after {
		content: '>';
	}

	@media (max-width: 640px) {
		nav {
			margin-right: 0;
			padding-top: var(--size-3);
		}

		nav ol {
			flex-direction: column;
			align-items: flex-start;
		}
	}
</style>
