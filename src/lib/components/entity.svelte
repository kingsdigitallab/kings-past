<script lang="ts">
	import type { Moment } from '$lib/types';
	import { LucideExternalLink } from 'lucide-svelte';

	export let entityType: string;
	export let entityName: string;
	export let meta: Record<string, any>;
	export let description: string | undefined = undefined;
	export let feature: Record<string, any> | undefined = undefined;
	export let moments: Moment[] | undefined = undefined;
	export let sameAs: Record<string, any>[] | undefined = undefined;
	export let sources: Record<string, any> | undefined = undefined;
	export let urls: Record<string, any>[] | undefined = undefined;
</script>

<article>
	<hgroup class={entityType.toLowerCase()}>
		<p class="entity">
			<strong>{entityType}</strong>
		</p>
		<h1>{entityName}</h1>
	</hgroup>

	<section>
		<dl class="dl-inline">
			{#each Object.entries(meta) as [key, value]}
				<dt>{key}</dt>
				<dd>{value}</dd>
			{/each}
			{#if sameAs && sameAs.length}
				<dt><LucideExternalLink />Related</dt>
				<dd>
					<ul>
						{#each sameAs as sa}
							<li>
								<a href={sa.url}>{sa.name}</a>
							</li>
						{/each}
					</ul>
				</dd>
			{/if}
		</dl>
	</section>

	{#if feature}
		<section class="font-serif">
			<figure>
				<img src={feature.image_url} alt={feature.image_description} title={feature.image_title} />
				<figcaption>{feature.image_title}</figcaption>
			</figure>
		</section>
	{/if}

	{#if description}
		<section class="md font-serif">
			{@html description}
		</section>
	{/if}

	{#if moments && moments.length}
		<section class="moments">
			<h2>Moments</h2>
			<ol>
				{#each moments as moment}
					<li class="surface-2">
						<a href="../../moments/{moment.slug}">{moment.title}</a>
					</li>
				{/each}
			</ol>
		</section>
	{/if}

	<slot />

	{#if sources && sources.length}
		<section>
			<h2>Sources</h2>
			<ul>
				{#each sources as source}
					<li>
						<p>
							{#if source.url}
								<a href={source.url}>{source.name}</a>
							{:else}
								{source.name}
							{/if}
						</p>
						{#if source.description}
							<p>{source.description}</p>
						{/if}
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if urls && urls.length}
		<section>
			<h2>External links</h2>
			<ul>
				{#each urls as url}
					<li>
						<a href={url.url}>{url.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}
</article>

<style>
	.entity {
		font-family: var(--font-headings);
		font-size: var(--font-size-5);
		max-inline-size: none;
	}

	h1 {
		color: var(--brand);
		max-inline-size: none;
	}

	dt {
		display: flex;
	}

	:global(dt svg) {
		margin-right: var(--size-2);
	}

	dd ul {
		display: flex;
		max-inline-size: none;
	}

	dd ul li,
	dd ul li a {
		display: flex;
		max-inline-size: none;
	}

	dd ul li:not(:first-child)::before {
		content: ',';
		margin-right: var(--size-1);
	}

	img {
		height: 50vh;
	}

	.moments ol {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		gap: var(--size-4);
		justify-content: space-between;
		padding-inline-start: 0;
	}

	.moments ol li {
		border-radius: var(--radius-1);
		box-shadow: var(--shadow-2);
		flex-basis: 95%;
		padding: var(--size-fluid-3);

		@media (--motionOK) {
			animation: var(--animation-fade-in);
		}

		@media (min-width: 640px) {
			flex-basis: 45%;
		}

		@media (min-width: 1024px) {
			flex-basis: 30%;
		}
	}

	.moments ol li:hover {
		color: var(--yellow);
		box-shadow: var(--size-1) var(--size-1) var(--yellow);
	}
</style>
