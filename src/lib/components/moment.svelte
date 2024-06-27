<script lang="ts">
	import type { Moment } from '$lib/types';
	import { getMomentN } from '$lib/moments';
	import { RectangleHorizontal, RectangleVertical } from 'lucide-svelte';
	import { base } from '$app/paths';

	export let meta: Record<string, any>;
	export let metaExtra: Record<string, any> | null = null;
	export let content;
	export let moments: Moment[];

	const path = metaExtra ? '../' : '';

	const prev = meta.n > 1 ? moments[meta.n - 2] : null;
	const next = meta.n < moments.length ? moments[meta.n] : null;
</script>

<article id="moment">
	<p class="n">
		<strong
			>Moment {meta.n}{#if metaExtra}
				&#160;-&#160;{meta.title}{/if}</strong
		>
	</p>

	<header class="surface-2">
		<h1>
			{#if metaExtra}{metaExtra.title}{:else}{meta.title}{/if}
		</h1>
		<ol>
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
		<img
			src="{base}{meta.feature.image}"
			alt={meta.feature.description}
			title={meta.feature.title}
		/>
	</header>

	<article class="content">
		<div class="md">
			<svelte:component this={content} />
			<slot />
		</div>
	</article>
	<nav>
		<ol>
			{#if prev}
				<li class="prev surface-2">
					<a href={`${path}${getMomentN(prev.n)}`}>&#x276E; {prev.title}</a>
				</li>
			{:else}
				<li></li>
			{/if}
			{#if next}
				<li class="next surface-2">
					<a href={`${path}${getMomentN(next.n)}`}>{next.title} &#10095;</a>
				</li>
			{/if}
		</ol>
	</nav>
</article>

<style>
	#moment {
		& > p {
			font-family: var(--font-headings);
			font-size: var(--font-size-5);
			max-inline-size: none;
		}
	}

	header {
		padding-top: var(--size-8);

		& h1 {
			max-inline-size: none;
			padding-inline: var(--header-padding-inline);
			text-wrap: auto;
		}

		& img {
			height: 100%;
			object-fit: cover;
			object-position: center;
			width: 100%;
		}

		& ol {
			display: flex;
			gap: var(--size-5);
			padding-block: var(--size-4);
			padding-inline: var(--header-padding-inline);
		}

		& a.active {
			border: none;
		}
	}

	.content {
		background: var(--background);
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
			&.prev {
				margin-right: var(--size-2);
			}
			&.next {
				text-align: right;
				margin-left: var(--size-2);
			}
			&:hover {
				color: var(--yellow);
				box-shadow: var(--size-1) var(--size-1) var(--yellow);
			}
		}
	}
</style>
