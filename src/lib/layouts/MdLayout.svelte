<script lang="ts">
	import Head from '$lib/components/Head.svelte';

	export let title;
	export let excerpt;
	export let tags;

	const metadata = { title, excerpt, tags };

	$$props;
</script>

<svelte:head>
	<Head {metadata} />
</svelte:head>

<article class:support-content={$$props.type !== 'moment'} class="md">
	<slot />
</article>

<style>
	.support-content {
		& :is(h2, h3, h4, h5, h6) {
			margin-top: var(--size-4);
			margin-bottom: var(--size-2);
		}

		& p,
		& li {
			font-size: var(--font-size-2);
		}

		& li {
			margin-inline: var(--size-4);
		}

		& p:first-of-type::first-letter {
			float: unset;
			font-size: var(--font-size-2);
			padding-right: unset;
			padding-top: unset;
		}

		@supports (initial-letter: 2) or (-webkit-initial-letter: 2) {
			& p:first-of-type::first-letter {
				initial-letter: unset;
				-webkit-initial-letter: unset;
			}
		}
	}
</style>
