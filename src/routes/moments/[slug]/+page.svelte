<script lang="ts">
	import Moment from '$lib/components/moment.svelte';

	export let data;
	const { slug, meta, content, moments, essays, people } = data;
</script>

<Moment {meta} {content} {moments}>
	{#if essays?.length || people?.length}
		<section class="links">
			{#if essays?.length}
				<section class="surface-4">
					<h2>Detailed research</h2>
					<ul>
						{#each essays as essay}
							<li><a href="{slug}/{essay.slug}">{essay.title}</a></li>
						{/each}
					</ul>
				</section>
			{/if}

			{#if people?.length}
				<section class="surface-4">
					<h2>King's lives</h2>
					<ul>
						{#each people as person}
							<li>
								<a href="../database/people/{person.slug}">{person.name}</a>
							</li>
						{/each}
					</ul>
				</section>
			{/if}
		</section>
	{/if}
</Moment>

<style>
	.links {
		display: grid;
		grid-template-columns: repeat(auto-fill, minmax(var(--size-14), 1fr));
		grid-gap: var(--size-8);
		width: 100%;

		& section {
			padding-block: var(--size-4);
			padding-inline: var(--size-4);
		}
	}

	.links :is(ul) {
		list-style-type: disc;
		padding-left: var(--size-5);
	}

	.links :is(ol, ul) li {
		font-size: var(--font-size-3);
		margin-block: var(--size-2);
		padding-inline-start: var(--size-2);
	}
</style>
