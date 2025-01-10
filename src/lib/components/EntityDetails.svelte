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
		<h2>Related information</h2>
		{#if moments && moments.length}
			<section>
				<h3>Moments</h3>
				<ul>
					{#each moments as moment}
						<li data-pagefind-filter="Moment">
							<a href="../../moments/{moment.slug}">{moment.title}</a>
						</li>
					{/each}
				</ul>
			</section>
		{/if}

		<slot />

		{#if sources && sources.length}
			<section>
				<h3>Sources</h3>
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
				<h3>External links</h3>
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

	section.info {
		max-width: 50rem;
		width: 100%;
		margin: 0 auto;
		padding-top: var(--size-10);

		& h2 {
			border-bottom: 1px solid var(--midnight-blue);
			max-inline-size: none;
			font-size: var(--font-size-6);
		}
		& h3 {
			font-size: var(--font-size-5);
			font-weight: 200;
			margin: 0;
			min-width: 100%;
			padding: var(--size-3) var(--size-4) var(--size-1) var(--size-4);
		}

		& h4 {
			font-size: var(--font-size-3);
			font-family: var(--font-sans);
			margin: 0;
			padding: var(--size-1) var(--size-4) var(--size-1) var(--size-4);
		}

		& section {
		}

		& ul {
			margin-left: 15px;
			padding-left: var(--size-5);
		}

		& ul li {
			break-inside: avoid;
			font-size: var(--font-size-3);
			margin-block: var(--size-2);
			padding-inline-start: var(--size-2);
			max-inline-size: none;
			list-style-type: circle;
			& a {
				width: calc(100% - var(--size-2));
				text-decoration: underline;

				&:hover {
				}
			}
			& p {
				font-size: var(--font-size-3);
			}
		}
	}
</style>
