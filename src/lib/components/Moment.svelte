<script lang="ts">
	import type { Moment } from '$lib/types';
	import { getMomentN, splitMomentTitle } from '$lib/moments';
	import { RectangleHorizontal, RectangleVertical } from 'lucide-svelte';
	import { base } from '$app/paths';

	export let meta: Record<string, any>;
	export let metaExtra: Record<string, any> | null = null;
	export let content;
	export let moments: Moment[];

	const title = meta.title.includes(':') ? splitMomentTitle(meta.title) : null;

	const path = metaExtra ? '../' : '';

	const prev = meta.n > 1 ? moments[meta.n - 2] : null;
	const next = meta.n < moments.length ? moments[meta.n] : null;
</script>

<article id="moment">
	<header>
		<section class="surface-2">
			{#if metaExtra}
				<hgroup>
					<h1 data-pagefind-filter="moment">{metaExtra.title}</h1>
					<h2>
						{#if title}
							<span>{title.year}</span>
							{title.name}
						{:else}
							{meta.title}
						{/if}
					</h2>
				</hgroup>
			{:else}
				<h1 data-pagefind-filter="moment">
					{#if title}
						<span>{title.year}</span>
						{title.name}
					{:else}
						{meta.title}
					{/if}
				</h1>
			{/if}

			<ol>
				<span class="n">{meta.n}</span>
				{#each moments as cur}
					<li>
						<a
							href={`${path}${getMomentN(cur.n)}`}
							class:active={cur.n === meta.n}
							title="Moment {cur.n}"
						>
							{#if cur.n === meta.n}
								<RectangleHorizontal />
							{:else}
								<RectangleVertical />
							{/if}
						</a>
					</li>
				{/each}
			</ol>
		</section>

		<img
			src="{base}{meta.feature.image}"
			alt={meta.feature.description}
			title={meta.feature.title}
		/>
	</header>

	<article class="content">
		<section class="md">
			<svelte:component this={content} />
		</section>
		<slot />
	</article>
	<nav>
		<ol>
			{#if prev}
				<li class="prev">
					<a href={`${path}${getMomentN(prev.n)}`}>{prev.title}</a>
				</li>
			{:else}
				<li></li>
			{/if}
			{#if next}
				<li class="next">
					<a href={`${path}${getMomentN(next.n)}`}>{next.title}</a>
				</li>
			{/if}
		</ol>
	</nav>
</article>

<style>
	#moment {
		& > p {
			font-family: var(--font-headings);
			font-size: var(--font-size-4);
			max-inline-size: none;
		}

		& a rect {
			fill: var(--pearl-grey);
			stroke: var(--pearl-grey);
			transform: scale(0.7);
			&:hover {
				fill: white;
				stroke: white;
			}
		}

		& a.active rect {
			fill: var(--yellow);
			stroke: var(--yellow);
		}
	}

	header {
		padding: 0;
		& > section {
			width: 100%;
			height: 100%;
			padding: var(--size-5) var(--size-5) 0 var(--size-5);
			margin: 0;
			& h1 {
				max-inline-size: none;
			}
			& h2 {
				max-inline-size: none;
				margin-top: var(--size-5);
			}
			& ol {
				& span {
					margin: -4px 30px 0 0;
					color: var(--yellow);
				}
				display: flex;
				gap: var(--size-1);
				align-items: center;
				/*justify-content: center;*/
			}
		}

		& img {
			height: 100%;
			object-fit: cover;
			object-position: center;
			width: 100%;
		}

		& a.active {
			border: none;
		}
	}

	.content {
		background: var(--background);
		box-shadow: var(--shadow-2);
		display: grid;
		font-family: var(--font-serif);
		margin-inline: auto;
		margin-top: calc(-1 * var(--size-11));
		max-inline-size: var(--size-lg);
		place-items: center;
		position: relative;
	}

	nav {
		margin-top: var(--section-margin);
	}

	nav ol {
		display: flex;
		justify-content: space-between;
		width: 100%;

		& > li,
		& button a {
			max-inline-size: none;
			display: block;
			padding: var(--size-2);
			transition: all 1s ease-in-out;
			&.prev a {
				margin-right: var(--size-2);
				text-decoration: none;
				&:before {
					content: '❮';
					position: relative;
					transition: all 1s ease-in-out;
					padding: var(--size-3);
				}
			}
			&.next a {
				text-align: right;
				margin-left: var(--size-2);
				text-decoration: none;
				display: inline-block;
				&:after {
					content: '❯';
					position: relative;
					transition: all 1s ease-in-out;
					padding: var(--size-3);
				}
			}
			&:hover {
				& a {
					opacity: 1;
				}
				&.next a:after,
				&.prev a:before {
					line-height: 0;
					padding: var(--size-2);
				}
			}
		}
	}
</style>
