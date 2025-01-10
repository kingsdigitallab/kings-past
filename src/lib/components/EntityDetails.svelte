<script lang="ts">
	import { EMPTY_PLACEHOLDER } from '$lib/config';
	import type { Donation, Event, Moment, Organisation, Person, Place } from '$lib/types';
	import { LucideExternalLink } from 'lucide-svelte';

	export let entity: Donation | Event | Organisation | Person | Place;
	export let entityType: string;
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
		<h1 data-pagefind-filter={entityType}>{entity.name}</h1>
	</hgroup>

	<section>
		<dl class="dl-inline">
			{#if ['Organisation', 'Person'].includes(entityType)}
				<dt>Slug</dt>
				<dd>{entity.slug}</dd>
			{/if}
			{#each Object.entries(meta) as [key, value]}
				{#if value?.slug}
					<dt>{key}</dt>
					<dd><a href="../places/{value.slug}">{value.name}</a></dd>
				{:else}
					<dt>{key}</dt>
					<dd>{value || EMPTY_PLACEHOLDER}</dd>
				{/if}
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
	<section class="info">
		{#if moments && moments.length}
			<section class="moments">
				<h2>Moments</h2>
				<ol>
					{#each moments as moment}
						<li class="surface-2" data-pagefind-filter="Moment">
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
	</section>
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

	dd a,
	dd ul li {
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

	section.info {
		max-width: 50rem;
		width: 100%;
		margin: 0 auto;
		padding-inline: var(--size-4);
		padding: 0;
		& h2 {
			background-color: var(--powder-blue);
			font-size: var(--font-size-5);
			font-weight: 200;
			margin: 0;
			min-width: 100%;
			padding: var(--size-3) var(--size-4);
		}

		& section {
			padding-left: var(--size-4);
			background: white;
		}

		& ul {
			list-style-type: none;
			margin-left: -28px;
			padding-left: var(--size-5);
		}

		& ul li {
			break-inside: avoid;
			font-size: var(--font-size-3);
			margin-block: var(--size-2);
			padding-inline-start: var(--size-2);

			& a {
				border-left: var(--size-2) solid var(--surface-1);
				display: block;
				padding-left: var(--size-3);
				text-decoration: none;
				width: calc(100% - var(--size-2));

				&:hover {
					background-color: var(--midnight-blue);
					border-left: var(--size-2) solid var(--pearl-grey);
					color: white;
					opacity: 1;
				}
			}
		}
	}
</style>
