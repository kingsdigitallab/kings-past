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
				<a href={item.href}>
					<header>
						<span>34</span>
						<h2>{item.title}</h2>
					</header>
				</a>
				<article>
					<p>{item.description}</p>
					<footer>
						<p>Stats?</p>
					</footer>
				</article>
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
	article.card {
		padding: 0;
		border: 0;
		background-color: white;
		border-radius: 0;
		display: block;
		box-shadow: var(--shadow-2);

		& a {
			display: block;
			& header {
				background-color: var(--midnight-blue);
				padding: 0;
				border-bottom: var(--size-2) solid var(--powder-blue);
				transition: all 0.5s ease-out;
				display:flex;
				& span{
					display:inline;
					font-size:var(--font-size-8);
					padding: 0 0 0 var(--size-4) ;
					color: white;
				}
				& h2 {
					color: white;
					font-size: var(--font-size-5);
					transition: all 0.5s ease-out;
					padding: var(--size-4) var(--size-4) 0 var(--size-4);
				}
				&:hover {
					border-bottom: var(--size-2) solid var(--yellow);
					& h2 {
						color: var(--yellow);
						opacity: 1;
					}
				}
			}
			&:hover {
				opacity: 1;
			}
		}
		& > article {
			background-color: white;
			margin: 0 var(--size-1) var(--size-1) var(--size-1);
			padding: var(--size-3);
		}
		&:hover {
			transform: translateY(0);
			box-shadow: var(--shadow-3);
		}
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
