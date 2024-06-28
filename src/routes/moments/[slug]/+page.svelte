<script type="ts">
	import Moment from '$lib/components/moment.svelte';

	export let data;
</script>

<Moment meta={data.meta} content={data.content} moments={data.moments}>
	{#if (data.essays && data.essays.length > 0) || (data.momentPeople && data.momentPeople.length > 0)}
		<section class="links">
			{#if data.essays && data.essays.length > 0}
				<section class="surface-4">
					<h2>Detailed research</h2>
					<ul>
						{#each data.essays as essay}
							<li><a href="{data.slug}/{essay.slug}">{essay.title}</a></li>
						{/each}
					</ul>
				</section>
			{/if}

			{#if data.momentPeople && data.momentPeople.length > 0}
				<section class="surface-4">
					<h2>King's lives</h2>
					<ul>
						{#each data.momentPeople as person}
							<li>
								<a href="../database/people/{person.person}">{data.people[person.person].name}</a>
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

	li {
		font-size: var(--font-size-3);
	}
</style>
