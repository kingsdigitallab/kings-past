<script lang="ts">
	import * as config from '$lib/config';
	import type { Moment } from '$lib/types';
	import { base } from '$app/paths';
	import { Image } from '@unpic/svelte';
	import { splitMomentTitle } from '$lib/moments';

	export let moments: Moment[];
</script>

<section id="moments">
	<hgroup>
		<h2>{config.momentsHeader.title}</h2>
		<p>{config.momentsHeader.message}</p>
	</hgroup>
	<ul class="moments">
		{#each moments as moment}
			{@const title = splitMomentTitle(moment.title)}
			<li class="moment">
				<a href="moments/{moment.slug}">
					<Image
						src={`${base}${moment.feature.image}`}
						alt={moment.feature.description}
						title={moment.feature.title}
						layout="fullWidth"
						height={320}
					/>
					<div class="title"><span>{title.year}</span> {title.name}</div>
				</a>
			</li>
		{/each}
	</ul>
</section>

<style lang="scss">
	#moments {
		margin-block: var(--section-margin);
	}

	hgroup p {
		font-family: var(--font-serif);
		font-size: var(--font-size-fluid-1);
	}

	.moments {
		display: flex;
		flex-wrap: wrap;
		gap: var(--size-3);
		padding-block: var(--size-9);

		* {
			box-sizing: border-box;
		}

		li {
			align-items: center;
			display: flex;
			flex: 1 1 auto;
			font-size: var(--font-size-fluid-0);
			justify-content: space-evenly;
			height: var(--size-14);
			max-inline-size: none;
			min-width: 275px;
			overflow: hidden;

			a {
				color: white;
				height: 100%;
				padding: 0;
				width: 100%;

				&:hover {
					color: var(--yellow);
					text-decoration-color: var(--yellow);
					opacity: 1;

					.title {
						border-bottom: var(--size-1) solid var(--yellow);
						color: white;
						span {
							color: var(--yellow);
						}
					}

					:global(img) {
						transform: scale(1.3);
					}
				}
			}
		}

		@for $i from 1 through 13 {
			li:nth-child(#{$i}) {
				$w: random(3) * 150px;
				width: $w;
			}
		}

		.moment {
			position: relative;
		}

		.title {
			background: var(--brand);
			bottom: 0;
			height: var(--size-10);
			padding: var(--size-4);
			position: absolute;
			width: 100%;
			border-bottom: var(--size-1) solid var(--powder-blue);
			& span {
				font-size: var(--font-size-5);
				font-weight: 800;
				position: absolute;
				top: -25px;
				background: var(--midnight-blue);
				padding: 5px 7px 0 7px;
				line-height: 1.1;
			}
		}
	}

	:global(.moments li a img) {
		height: 100%;
		object-fit: cover;
		object-position: center;
		overflow: hidden;
		width: 100%;
		transform: scale(1.1);
		transition: all 1.5s ease-in-out;
	}

	@media (max-width: 768px) {
		#moments {
			margin-block: var(--size-6);
			& h2 {
				font-size: var(--font-size-5);
			}
			& p {
				font-size: var(--font-size-3);
			}
			& ul {
				padding-block: var(--size-3);
			}
			& .title {
				font-size: var(--font-size-2);
			}
		}
	}
</style>
