<script lang="ts">
	import { database } from '$lib/config';

	export let data;
	const { _metadata, stats, url } = data;

	const items = [
		{
			count: stats.personCount,
			title: 'People',
			description: database.people.excerpt,
			href: `${url}${database.people.href}`
		},
		{
			count: stats.organisationCount,
			title: 'Organisations',
			description: database.organisations.excerpt,
			href: `${url}${database.organisations.href}`
		},
		{
			count: stats.placeCount,
			title: 'Places',
			description: database.places.excerpt,
			href: `${url}${database.places.href}`
		},
		{
			count: stats.eventCount,
			title: 'Events',
			description: database.events.excerpt,
			href: `${url}${database.events.href}`
		},
		{
			count: stats.donationCount,
			title: 'Donations',
			description: database.donations.excerpt,
			href: `${url}${database.donations.href}`
		}
	];
</script>

<article>
	<hgroup>
		<h1>Database</h1>
		<p>{_metadata.excerpt}</p>
	</hgroup>

	<section class="grid">
		{#each items as item}
			<article class="card">
				<header>
					<a href={item.href}>
						<span>{item.count}</span>
						<h2>{item.title}</h2>
					</a>
				</header>
				<div class="content">
					<p>{item.description}</p>
				</div>
			</article>
		{/each}
	</section>
</article>

<style>
	section {
		display: grid;
		grid-template-columns: 1fr;
		gap: var(--size-4);
		height: 100%;
	}

	@media (min-width: 768px) {
		section {
			grid-template-columns: repeat(2, 1fr);
		}
	}

	@media (min-width: 1024px) {
		section {
			grid-template-columns: repeat(3, 1fr);
		}
	}

	.card {
		background: var(--surface-1);
		border-radius: var(--radius-2);
		border: 1px solid var(--border-light);
		box-shadow: var(--shadow-2);
		color: inherit;
		display: block;
		padding: 0;
		transition: all 0.2s ease;
	}

	.card:hover {
		box-shadow: var(--shadow-3);
		transform: translateY(-2px);
	}

	.card header {
		background-color: var(--midnight-blue);
		border-bottom: var(--size-2) solid var(--powder-blue);
		transition: all 0.5s ease-out;
	}

	.card header a {
		display: flex;
		text-decoration: none;

		&:hover {
			opacity: 1;
		}
	}

	.card header span {
		color: white;
		display: inline;
		font-size: var(--font-size-8);
		padding-left: var(--size-4);
	}

	.card header h2 {
		color: white;
		font-size: var(--font-size-5);
		transition: all 0.5s ease-out;
		padding: var(--size-4) var(--size-4) 0 var(--size-4);
	}

	.card header:hover {
		border-bottom: var(--size-2) solid var(--yellow);
	}

	.card header:hover h2 {
		color: var(--yellow);
		opacity: 1;
	}

	.card .content {
		background-color: white;
		margin: 0 var(--size-1) var(--size-1) var(--size-1);
		padding: var(--size-3);
	}
</style>
