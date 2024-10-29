<script lang="ts">
	export let data;
	const { url } = data;

	const items = [
		{
			title: 'People',
			description: 'Explore the lives of Kings alumni',
			href: `${url}/people`
		},
		{
			title: 'Organisations',
			description: 'Explore the organisations that Kings has been associated with',
			href: `${url}/organisations`
		},
		{
			title: 'Places',
			description: 'Explore the places associated with Kings',
			href: `${url}/places`
		},
		{
			title: 'Events',
			description: 'Explore the events associated with Kings',
			href: `${url}/events`
		},
		{
			title: 'Donations',
			description: 'Explore the donations made to Kings',
			href: `${url}/donations`
		}
	];
</script>

<article>
	<h1>Database</h1>

	<section class="grid">
		{#each items as item}
			<article class="card">
				<header>
					<a href={item.href}>
						<h2>{item.title}</h2>
					</a>
				</header>
				<p>{item.description}</p>
				<footer>
					<p>Stats?</p>
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
		color: inherit;
		display: block;
		padding: var(--size-4);
		transition: all 0.2s ease;
	}

	.card:hover {
		box-shadow: var(--shadow-1);
		transform: translateY(-2px);
	}

	.card a {
		text-decoration: none;
	}

	.card footer {
		display: flex;
		margin-top: auto;
		padding-top: var(--size-4);
	}
</style>
