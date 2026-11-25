<script>
	import { page } from '$app/stores';
</script>

<article>
	<h1>{$page.status}</h1>
	<output>{$page.error?.message}</output>
	<p>Error loading the page {$page.url.pathname}.</p>
</article>

<style>
	output {
		font-size: 90%;
		opacity: 60%;
		text-transform: uppercase;
		letter-spacing: 0.1em;
	}
</style>
