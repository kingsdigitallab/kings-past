<script lang="ts">
	export let entityType: string;
	export let entityName: string;
	export let meta: Record<string, any>;
	export let description: string | undefined;
	export let feature: Record<string, any> | null;
	export let sources;
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
</style>
