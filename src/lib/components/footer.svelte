<script lang="ts">
	import * as config from '$lib/config';
	import footerImg from '$images/footer.jpg';
	import * as icons from 'lucide-svelte';

	import { base } from '$app/paths';
</script>

<footer>
	<picture>
		<img src={footerImg} alt="King's College London stamp from..." />
	</picture>
	<div class="layout surface-2">
		<section class="links">
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
		<section class="kdl">
			<p>
				Designed, developed and maintained by <a href="https://kdl.kcl.ac.uk">King's Digital Lab</a>
			</p>
		</section>
	</div>
</footer>

<style>
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
		padding-block: var(--size-6);
		width: 100%;
	}

	.links ul {
		align-items: center;
		display: flex;
		font-size: var(--font-size-1);
		gap: var(--size-5);
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
		padding-block: var(--size-4);
		text-align: center;
	}

	.kdl p {
		font-size: var(--font-size-fluid-0);
		max-inline-size: none;
	}

	.links ul a,
	.kdl a {
		text-decoration: underline;
	}

	@media (max-width: 768px) {
		.links {
			flex-direction: column;
		}

		.links ul.project {
			flex-direction: column;
		}
	}
</style>
