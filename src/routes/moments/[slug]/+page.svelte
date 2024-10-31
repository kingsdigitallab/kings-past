<script lang="ts">
	import Moment from '$lib/components/moment.svelte';

	export let data;
	const { slug, meta, content, moments, essaysByCategory, people } = data;
</script>

<Moment {meta} {content} {moments}>
	{#if essaysByCategory}
		<section class="info">
			<h2>Detailed research</h2>

			{#each Object.entries(essaysByCategory) as [category, essays]}
				<h3>{category.charAt(0).toUpperCase() + category.slice(1)}</h3>
				<ul>
					{#each essays as essay}
						<li><a href="{slug}/{essay.slug}">{essay.title}</a></li>
					{/each}
				</ul>
			{/each}
		</section>
	{/if}

	{#if people?.length}
		<section class="info">
			<details>
				<summary>King's lives </summary>
				<ul>
					{#each people as person}
						<li data-pagefind-filter="Person">
							<a href="../database/people/{person.slug}">{person.name}</a>
						</li>
					{/each}
				</ul>
			</details>
		</section>
	{/if}
</Moment>

<style>
	section.info {
		max-width: 50rem;
		width: 100%;

		background-color: white;
		padding-inline: var(--size-4);
		padding: 0;

		& details {
			background-color: inherit;

			& summary {
				border-radius: 0;
				font-family: var(--font-headings);
				font-size: var(--font-size-5);
				font-weight: var(--font-weight-2);
			}
		}

		& h2 {
			background-color: var(--powder-blue);
			font-size: var(--font-size-5);
			font-weight: 200;
			margin: 0;
			min-width: 100%;
			padding: var(--size-3) var(--size-4);
		}

		& ul {
			list-style-type: none;
			margin-left: -10px;
			padding-left: var(--size-5);

			& li {
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
						border-left: var(--size-2) solid var(--yellow);
						color: white;
						opacity: 1;
					}
				}
			}
		}
	}
</style>
