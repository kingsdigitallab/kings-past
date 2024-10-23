<script lang="ts">
	import type { Moment } from '$lib/types';

	export let entityType: string;
	export let entityName: string;
	export let meta: Record<string, any>;
	export let description: string | undefined = undefined;
	export let feature: Record<string, any> | undefined = undefined;
	export let moments: Moment[] | undefined = undefined;
	export let sources: Record<string, any> | undefined = undefined;
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
		</dl>
	</section>

	{#if feature && feature.length > 0}
		<section class="font-serif">
			<figure>
				<img
					src={feature[0].image_url}
					alt={feature[0].image_description}
					title={feature[0].image_title}
				/>
				<figcaption>{feature[0].image_title}</figcaption>
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
					<a href="../../moments/{moment.slug}">
						<li class="surface-2">{moment.title}</li>
					</a>
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
						<a href={source.url}>{source.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}
</article>

<style>
	/* .person {
		&::before {
			background-color: var(--yellow);
			border-radius: 50%;
			content: ' ';
			display: inline-block;
			height: 100px;
			position: absolute;
			width: 100px;
		}

		& * {
			position: relative;
		}
	} */

	.entity {
		font-family: var(--font-headings);
		font-size: var(--font-size-5);
		max-inline-size: none;
	}

	h1 {
		color: var(--brand);
		max-inline-size: none;
	}

	img {
		height: 50vh;
	}

	li {
		display: flex;
		align-items: baseline;
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
