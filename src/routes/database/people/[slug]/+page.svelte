<script lang="ts">
	export let data;
</script>

<article>
	<h1>{data.person.name}</h1>

	<section>
		<h2>Metadata</h2>
		<dl>
			<dt>Alternative names</dt>
			<dd>
				{data.person.alternative_names || null}
			</dd>
			<dt>Gender</dt>
			<dd>{data.person.gender}</dd>
			<dt>Nationality</dt>
			<dd>{data.person.nationality}</dd>
			<dt>Ethnicity</dt>
			<dd>{data.person.ethnicity}</dd>
			<dt>Languages</dt>
			<dd>{data.person.languages || null}</dd>
		</dl>
	</section>

	{#if data.person.description}
		<section>
			<p>{data.person.description}</p>
		</section>
	{/if}

	{#if data.knows}
		<section>
			<h2>Relationships</h2>
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

	{#if data.memberOf}
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
</article>

<style>
	li {
		display: flex;
		align-items: baseline;
	}
</style>
