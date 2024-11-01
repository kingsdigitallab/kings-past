<script lang="ts">
	export let data;
	const { stats, url } = data;

	const items = [
		{
			count: stats.personCount,
			title: 'People',
			description: 'Explore the lives of the people who helped shape Kings',
			href: `${url}/people`
		},
		{
			count: stats.organisationCount,
			title: 'Organisations',
			description: 'Explore the organisations that Kings has been associated with',
			href: `${url}/organisations`
		},
		{
			count: stats.placeCount,
			title: 'Places',
			description: 'Explore the places associated with Kings',
			href: `${url}/places`
		},
		{
			count: stats.eventCount,
			title: 'Events',
			description: 'Explore the events associated with Kings',
			href: `${url}/events`
		},
		{
			count: stats.donationCount,
			title: 'Donations',
			description: 'Explore the donations made to Kings',
			href: `${url}/donations`
		}
	];
</script>

<article>
	<hgroup>
		<h1>Database</h1>
		<p>Explore the data that makes up the Kings history.</p>
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
				<footer>
					<p>More stats could be added here</p>
				</footer>
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

	.card footer {
		display: flex;
		flex-direction: column;
		margin-top: auto;
		padding: var(--size-3);
		width: 100%;
	}
</style>
