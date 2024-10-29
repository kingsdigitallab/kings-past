<script lang="ts">
	import type { Moment } from '$lib/types';
	import { base } from '$app/paths';
	import { Image } from '@unpic/svelte';

	export let moments: Moment[];
</script>

<section id="moments">
	<hgroup>
		<h2>The 13 Moments</h2>
		<p>Explore the pivotal moments in King's College history</p>
	</hgroup>
	<ul class="moments">
		{#each moments as moment}
			<li class="moment">
				<a href="moments/{moment.slug}">
					<Image
						src={`${base}${moment.feature.image}`}
						alt={moment.feature.description}
						title={moment.feature.title}
						layout="fullWidth"
						height={320}
					/>
					<div class="title">{moment.title}</div>
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

		&:hover {
			opacity: 0.7;
			transform: scale(1.3);
		}
	}
</style>
