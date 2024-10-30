<script lang="ts">
	import Moment from '$lib/components/moment.svelte';

	export let data;
	const { slug, meta, content, moments, essays, people } = data;
</script>

<Moment {meta} {content} {moments}>
	{#if essays?.length || people?.length}
		<section class="links">
			{#if essays?.length}
				<section class="info">
					<h2>Detailed research</h2>
					<ul>
						{#each essays as essay}
							<li><a href="{slug}/{essay.slug}">{essay.title}</a></li>
						{/each}
					</ul>
				</section>
			{/if}

			{#if people?.length}
				<section class="info">
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
	section.info{
		background-color: white;
		padding:0;
		margin:var(--size-3);
		& h2{
			background-color: var(--powder-blue);
			margin:0;
			padding:var(--size-3) var(--size-4);
			font-weight: 200;
			font-size:var(--font-size-5);
			min-width: 100%;
		}
		& ul {
			list-style-type: none;
			margin-left: -10px;
			& li a{
			display: block;
			text-decoration: none;
			padding-left: var(--size-3);
			border-left:var(--size-2) solid var(--surface-1);
			width: calc(100% - var(--size-2));
			&:hover{
				background-color: var(--midnight-blue);
				border-left:var(--size-2) solid var(--yellow);
				opacity:1;
				color:white;
			}
			}
		}
	}
</style>
