<script type="ts">
	import Moment from '$lib/components/Moment.svelte';

	export let data;
</script>

<Moment meta={data.meta} metaExtra={data.essayMeta} content={data.essay} moments={data.moments} />
