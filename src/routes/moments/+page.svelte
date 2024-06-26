<script lang="ts">
	import { base } from '$app/paths';

	export let data;
</script>

<article>
	<h1>Moments</h1>

	{#each data.moments as moment}
		<article class="surface-1">
			<a href="moments/{moment.slug}">
				<img src="{base}{moment.feature.image}" alt={moment.feature.description} />
				<div>
					<h2>{moment.title}</h2>
					<p class="excerpt">
						{moment.excerpt}
					</p>
				</div>
			</a>
		</article>
	{/each}
</article>

<style>
	article {
		margin-bottom: 2rem;
	}
	a {
		display: flex;

		&:is(:hover) {
			text-decoration: none;
		}
	}

	div {
		padding-inline-start: var(--size-4);
	}

	h2 {
		max-inline-size: none;
		text-wrap: auto;
	}

	img {
		height: 150px;
		min-width: 300px;
		object-fit: cover;
		object-position: center;
		width: 300px;

		&:hover {
			box-shadow: var(--size-1) var(--size-1) var(--yellow);
			opacity: 0.7;
		}
	}

	.excerpt {
		max-inline-size: none;
	}

	@media (max-width: 768px) {
		a {
			flex-direction: column;
		}

		div {
			padding-block-start: var(--size-4);
			padding-inline-start: 0;
		}

		img {
			width: 100%;
		}
	}
</style>
