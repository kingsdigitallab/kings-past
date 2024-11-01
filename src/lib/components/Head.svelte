<script lang="ts">
	import * as config from '$lib/config';
	import { page } from '$app/stores';

	export let metadata;
</script>

{#if metadata?.title}
	<title>{config.title} | {metadata.title}</title>
{:else}
	<title>{config.title}</title>
{/if}
<meta name="description" content={metadata?.excerpt || config.description} />
{#if metadata?.tags}
	<meta name="keywords" content={metadata.tags} />
{/if}
<link rel="canonical" href={$page.url.toString()} />
