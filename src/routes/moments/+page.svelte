<script lang="ts">
	import { base } from '$app/paths';
	import { splitMomentTitle } from '$lib/moments';

	export let data;
	const { moments } = data;
</script>

<article>
	<h1>Moments</h1>
	<div>
		{#each moments as moment}
			{@const title = splitMomentTitle(moment.title)}

			<article id="moment-{moment.slug}">
				<a href="moments/{moment.slug}">
					<figure>
						<img src="{base}{moment.feature.image}" alt={moment.feature.description} />
					</figure>
					<h2><span>{title.year}</span> {title.name}</h2>
				</a>
				<p class="excerpt">{moment.excerpt}</p>
			</article>
		{/each}
	</div>
</article>

<style lang="scss">
	article {
		margin-bottom: 2rem;
		overflow: hidden;
		> div {
			display: grid;
			grid-template-columns: 1fr;
			gap: var(--size-4);
			height: 100%;
			grid-template-columns: repeat(2, 1fr);

			> article {
				overflow: hidden;
				transition: all 0.5s ease-out;
				a {
					text-decoration: none;

					&:is(:hover) {
						text-decoration: none;
						opacity: 1;

						img {
							opacity: 1;
							transform: scale(1.1);
						}
						h2 {
							background: var(--midnight-blue);
							color: white;
							transition: all 0.5s ease-out;
							border-bottom: var(--size-2) solid var(--yellow);
							> span {
								color: var(--yellow);
							}
						}
					}
				}
				figure {
					overflow: hidden;
					width: 100%;
					& img {
						object-fit: cover;
						object-position: center;
						width: 100%;
						transform: scale(1.05);
						transition: all 1.5s ease-in-out;
						height: 400px;
					}
				}
				h2 {
					max-inline-size: none;
					text-wrap: auto;
					padding: var(--size-7) var(--size-2) var(--size-2) var(--size-2);
					border-bottom: var(--size-2) solid transparent;
					background: var(--midnight-blue);
					color: white;
					& > span {
						font-size: var(--font-size-7);
						position: absolute;
						background: var(--midnight-blue);
						color: white;
						margin: -75px 0 0 var(--size-2);
						padding: var(--size-2) var(--size-2) 0 var(--size-2);
					}
				}
			}
			p {
				padding: 0 var(--size-2) var(--size-2) var(--size-2);
			}
		}
	}

	.excerpt {
		max-inline-size: none;
	}

	@media (max-width: 768px) {
		article {
			> div {
				display: block;
			}
			article {
				a {
					display: block;

					h2 span {
						font-size: var(--font-size-6);
						margin: -65px 0 0 var(--size-2);
					}
				}
			}
		}
	}
</style>
