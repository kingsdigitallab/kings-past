<script type="ts">
	import Moment from '$lib/components/moment.svelte';

	export let data;
</script>

<Moment meta={data.meta} content={data.content} moments={data.moments}>
	{#if data.essays && data.essays.length > 0}
		<section>
			<h2>Detailed research</h2>
			<ul>
				{#each data.essays as essay}
					<li><a href="{data.slug}/{essay.slug}">{essay.title}</a></li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if data.momentPeople && data.momentPeople.length > 0}
		<section>
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
</Moment>
