<script lang="ts">
	import type { Moment } from '$lib/types';

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
				<img src={moment.feature.image} alt={moment.feature.description} />
				<div class="title">
					<a href="moments/{moment.slug}">{moment.title}</a>
				</div>
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
		padding-block: var(--size-9);

		li {
			flex: 1 1 auto;
			font-size: var(--font-size-fluid-0);
			height: var(--size-14);
			margin: 0 var(--size-3) var(--size-3) 0;
			max-inline-size: none;

			img {
				height: 100%;
				object-fit: cover;
				object-position: center;
				width: 100%;
			}

			a {
				color: white;

				&:hover {
					color: var(--yellow);
					text-decoration-color: var(--yellow);
				}
			}
		}

		@for $i from 1 through 13 {
			li:nth-child(#{$i}) {
				$w: --size + '-' + (random(4) + 11);
				width: var($w);
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
		}
	}
</style>
