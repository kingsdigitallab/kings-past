<script lang="ts">
	import { base } from '$app/paths';
	import { page } from '$app/stores';

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

			breadcrumbs.unshift({ label: 'Home', href: `${base}/` });
		}
	}
</script>

{#if $page.url.pathname !== '/'}
	<nav
		aria-label="Breadcrumb"
		class:surface-1={breadcrumbs.length < 2}
		class:surface-3={breadcrumbs.length > 1}
	>
		<ol>
			{#each breadcrumbs as crumb, index}
				<li>
					{#if index < breadcrumbs.length - 1}
						<a href={crumb.href}>{crumb.label}</a>
					{/if}
				</li>
			{/each}
		</ol>
	</nav>
{/if}

<style>
	nav {
		align-content: center;
		height: calc(var(--header-height) / 2);
		padding-inline: var(--size-9);

		& ol {
			align-items: center;
			display: inline-flex;
			gap: 0.5rem;

			& li:not(:last-child)::after {
				content: '>';
			}
		}
	}
</style>
