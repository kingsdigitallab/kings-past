<script lang="ts">
	import type { Moment } from '$lib/types';
	import { getMomentN, splitMomentTitle } from '$lib/moments';
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
					<span class="research">Research</span>
					<h1 data-pagefind-filter="moment">{metaExtra.title}</h1>
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
				{#each moments as cur, idx}
					<li>
						<a
							href={`${path}${getMomentN(cur.n)}`}
							class:active={cur.n === meta.n}
							title="Moment {cur.n}"
						>
							<img
								src="{base}{moments[idx].feature.image}"
								class="moment-icon"
								class:active={cur.n === meta.n}
								alt={moments[idx].feature.description}
								title={moments[idx].feature.title}
							/>
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
	span.research {
		font-family: var(--font-headings);
		font-size: var(--font-size-2);
		max-inline-size: none;
		text-transform: uppercase;
		color: var(--yellow);
	}

	header {
		padding: 0;
		& img {
			object-fit: cover;
			width: 100%;
		}

		& > section {
			width: 100%;
			height: 100%;
			padding: var(--size-5) var(--size-5) 0 var(--size-5);
			margin: 0;
			& h1 {
				max-inline-size: none;
			}
			& h3 {
				max-inline-size: none;
				margin-bottom: var(--size-5);
			}
			& ol {
				& li {
					width: 100%;
					& a {
						border: none;
						& img.moment-icon {
							height: 5vw;
							object-fit: cover;
							width: 100%;
							object-fit: cover;
							object-position: center;
							width: 100%;
							opacity: 0.4;
							&:hover {
								opacity: 1;
							}
							&.active {
								border-bottom: 1vw solid var(--yellow);
								opacity: 1;
							}
						}
					}
				}
				display: flex;
				align-items: center;
				gap: var(--size-1);
			}
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
