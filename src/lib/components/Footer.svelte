<script lang="ts">
	import * as config from '$lib/config';
	import footerImg from '$images/footer.webp';
	import * as icons from 'lucide-svelte';

	import { base } from '$app/paths';
</script>

<footer>
	<picture>
		<img src={footerImg} alt="King's College London stamp from..." />
	</picture>
	<div class="layout surface-2">
		<section class="links" aria-label="Footer links">
			<a href={base} class="title">
				<strong>{config.title}</strong>
			</a>
			<ul class="project">
				{#each config.footer.links as link, idx}
					<li>
						{#if link.url.startsWith('http')}
							<a href={link.url}>{link.title}</a>
						{:else}
							<a href="{base}{link.url}">{link.title}</a>
						{/if}
					</li>
				{/each}
			</ul>
			<ul class="social">
				{#each config.footer.social as link}
					<li>
						<a href={link.url} aria-label={link.label}
							><svelte:component this={icons[link.icon]} {...$$props} /></a
						>
					</li>
				{/each}
			</ul>
		</section>
	</div>
	<div class="layout surface-3">
		<section class="kdl" aria-label="Attribution">
			<p>
				Designed, developed and maintained by <a href="https://kdl.kcl.ac.uk">King's Digital Lab</a>
			</p>
		</section>
	</div>
</footer>

<style lang="scss">
	footer {
		border-top: 1px solid var(--border);
		display: grid;
		grid-template-rows: auto 1fr auto;
	}

	picture {
		align-self: stretch;
		height: 100%;
		overflow: hidden;
		width: 100%;
	}

	picture img {
		width: 100%;
	}

	.layout {
		height: 100%;
		padding-inline: var(--header-padding-inline);
	}

	.title {
		font-family: var(--font-headings);
		font-size: var(--font-size-4);
	}

	.links {
		align-items: center;
		display: flex;
		justify-content: space-between;
		width: 100%;
		ul {
			align-items: center;
			display: flex;
			font-size: var(--font-size-1);
			gap: var(--size-5);
		}
		a {
			text-decoration: none;
		}
	}

	.links > * {
		flex: 1 1 auto;
	}

	.links .project * {
		flex: 1 1 auto;
	}

	.links .social {
		justify-content: flex-end;
	}

	.kdl {
		text-align: center;
		margin: var(--size-3);
	}

	.kdl p {
		font-size: var(--font-size-fluid-0);
		max-inline-size: none;
	}

	.kdl a {
		text-decoration: underline;
	}

	@media (max-width: 768px) {
		.links {
			flex-direction: column;
		}

		.links ul.project {
			flex-direction: column;
			gap: var(--size-2);
			width: 100%;
			display: flex;
			margin: var(--size-5) 0;
		}

		.links ul.project li {
			width: 100%;
			display: flex;
			text-align: center;
			a {
				width: 100%;
			}
		}
	}
</style>
