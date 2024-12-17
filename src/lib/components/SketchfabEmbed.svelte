<script lang="ts">
	export let modelId: string;
	export let title: string;

	const iframeTitle = `3D model - ${title}`;
</script>

<div class="sketchfab-embed" role="region" aria-label={iframeTitle}>
	<iframe
		{title}
		frameborder="0"
		allow="autoplay; fullscreen; xr-spatial-tracking"
		allowfullscreen
		mozallowfullscreen="true"
		webkitallowfullscreen="true"
		src="https://sketchfab.com/models/{modelId}/embed?autostart=0&ui_controls=1&ui_infos=0&ui_hint=0&ui_ar=0&ui_watermark=0"
	/>
	<p class="attribution">
		{title} | View on
		<a href="https://sketchfab.com/3d-models/{modelId}" target="_blank" rel="nofollow">Sketchfab</a>
	</p>
</div>

<style>
	.sketchfab-embed {
		width: 100%;
		aspect-ratio: 16/9;
		margin: var(--size-7) 0;
		text-align: center;
	}

	iframe {
		width: 100%;
		height: 100%;
		border-radius: var(--radius-2);
	}

	.attribution {
		color: var(--text-1);
		font-size: var(--font-size-0);
		margin-top: var(--size-2);
		max-inline-size: unset;
		text-align: center;
		width: 100%;
	}

	.attribution a {
		color: var(--link);
	}
</style>
