<script lang="ts">
	import { base } from '$app/paths';
	import { splitMomentTitle } from '$lib/moments';

	export let data;
	const { moments } = data;
</script>

<article>
	<h1>Moments</h1>

	{#each moments as moment}
		{@const title = splitMomentTitle(moment.title)}

		<article class="surface-1" id="moment-{moment.slug}">
			<a href="moments/{moment.slug}">
				<div>
					<span>Moment {parseInt(moment.slug)}</span>
					<img src="{base}{moment.feature.image}" alt={moment.feature.description} />
				</div>
				<div>
					<h2><span>{title.year}</span> {title.name}</h2>
					<p class="excerpt">{moment.excerpt}</p>
				</div>
			</a>
		</article>
	{/each}
</article>

<style lang="scss">
	article {
		margin-bottom: 2rem;
		overflow: hidden;

		> article {
			background-color: var(--midnight-blue);
			div {
				padding: var(--size-4);
				transition: all 1s ease-out;
				color: white;
				border-bottom: var(--size-2) solid var(--powder-blue);
			}
		}
	}
	a {
		display: block;
		text-decoration: none;

		&:is(:hover) {
			text-decoration: none;
			opacity: 1;

			div {
				color: var(--yellow);
				border-bottom: var(--size-2) solid var(--yellow);
			}
			img {
				opacity: 1;
				transform: scale(1.1);
			}
		}
	}

	h2 {
		max-inline-size: none;
		text-wrap: auto;
		font-weight: 400;
	}

	img {
		height: 150px;
		object-fit: cover;
		object-position: center;
		width: 100%;
		transform: scale(1.05);
		transition: all 1.5s ease-in-out;
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
