<script lang="ts">
	import { EMPTY_PLACEHOLDER } from '$lib/constants.js';

	export let data;
</script>

<article>
	<h1>{data.person.name}</h1>

	<section>
		<dl class="dl-inline">
			<dt>Alternative names</dt>
			<dd>
				{data.person.alternative_names || EMPTY_PLACEHOLDER}
			</dd>
			<dt>Gender</dt>
			<dd>{data.person.gender || EMPTY_PLACEHOLDER}</dd>
			<dt>Nationality</dt>
			<dd>{data.person.nationality}</dd>
			<dt>Ethnicity</dt>
			<dd>{data.person.ethnicity}</dd>
			<dt>Languages</dt>
			<dd>{data.person.languages || EMPTY_PLACEHOLDER}</dd>
		</dl>
	</section>

	{#if data.person.description}
		<section class="font-serif">
			<p>{data.person.description}</p>
		</section>
	{/if}

	{#if data.knows && data.knows.length}
		<section>
			<h2>Knows</h2>
			<ul>
				{#each data.knows as knows}
					<li>
						{#if knows.person === data.person.slug}
							<a href={knows.knows}>{data.people[knows.knows].name}</a>
						{:else}
							<a href={knows.person}>{data.people[knows.person].name}</a>
						{/if}
						{#if knows.relationship}
							<span>, {knows.relationship.toLowerCase()}</span>
						{/if}
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if data.memberOf && data.memberOf.length}
		<section>
			<h2>Member of</h2>
			<ul>
				{#each data.memberOf as member}
					<li>
						<a href="../organisations/{member.organisation}"
							>{data.organisations[member.organisation].name}</a
						>
					</li>
				{/each}
			</ul>
		</section>
	{/if}

	{#if data.sources && data.sources.length}
		<section>
			<h2>Sources</h2>
			<ul>
				{#each data.sources as source}
					<li>
						<a href={source.url}>{source.name}</a>
					</li>
				{/each}
			</ul>
		</section>
	{/if}
</article>

<style>
	li {
		display: flex;
		align-items: baseline;
	}
</style>
