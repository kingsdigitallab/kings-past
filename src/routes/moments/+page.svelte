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
					<span>{parseInt(moment.slug)}</span>
					<figure>
						<img src="{base}{moment.feature.image}" alt={moment.feature.description} />
					</figure>
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
			div:first-child {
				display: flex;
				flex-direction: row;
				justify-content: space-between;
				align-items: center;
				background-color: var(--powder-blue);
				height: 150px;
				overflow: hidden;
				transition: all 0.5s ease-out;
				& span {
					width: 8%;
					min-width: var(--size-8);
					font-size: var(--font-size-3);
					color: var(--midnight-blue);
					text-align: center;
				}
			}
			div:last-child {
				padding: var(--size-4);
				color: white;
				border-bottom: var(--size-2) solid var(--powder-blue);
				transition: all 0.5s ease-out;
			}
		}
	}
	a {
		display: block;
		text-decoration: none;
		&:is(:hover) {
			text-decoration: none;
			opacity: 1;

			div:first-child {
				background-color: var(--powder-blue);
			}
			div:last-child {
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
		& span {
			font-size: var(--font-size-7);
			position: absolute;
			background: var(--midnight-blue);
			margin-top: -60px;
			padding: 0 var(--size-2);
		}
	}
	figure {
		overflow: hidden;
		width: 92%;
		& img {
			object-fit: cover;
			object-position: center;
			width: 100%;
			transform: scale(1.05);
			transition: all 1.5s ease-in-out;
			min-height: 200px;
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
		article {
			> article {
				div:first-child span {
					font-size: var(--font-size-3);
				}
			}
		}
		img {
			width: 100%;
		}
		h2 span {
			font-size: var(--font-size-5);
			margin-top: -42px;
		}
	}
</style>
