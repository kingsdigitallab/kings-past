<script lang="ts">
	import * as config from '../config';
	import kclLogo from '$images/kcl.png';

	import { base } from '$app/paths';
	import { page } from '$app/stores';
</script>

<header>
	<div class="layout surface-2">
		<nav>
			<a href="{base}/" class="title">
				<strong>{config.title}</strong>
			</a>

			<ul class="links">
				{#each config.nav as item}
					<li>
						<a href="{base}{item.url}" class:active={$page.url.pathname.startsWith(item.url)}
							>{item.title}</a
						>
					</li>
				{/each}
			</ul>
		</nav>
		<img src={kclLogo} alt="King's College London logo" />
	</div>
</header>

<style>
	header {
		height: var(--header-height);
		width: 100%;
	}

	.layout {
		display: flex;
		height: 100%;
		justify-content: space-between;
		padding-block: var(--header-padding-block);
		padding-inline: var(--header-padding-inline);
	}

	nav {
		display: flex;
		justify-content: space-between;
		margin-right: var(--size-5);
		width: 100%;
	}

	.title {
		font-family: var(--font-headings);
		font-size: var(--font-size-5);
	}

	.links {
		align-items: center;
		display: flex;
		margin-left: auto;
		gap: var(--size-5);
	}

	a {
		text-decoration: none;
	}

	img {
		height: 8em;
		margin-top: calc(-1 * var(--size-2));
		z-index: var(--layer-1);
	}

	@media (max-width: 768px) {
		.title {
			font-size: var(--font-size-4);
		}

		img {
			height: 4em;
			margin-top: calc(-1 * var(--size-1));
		}
	}
</style>
