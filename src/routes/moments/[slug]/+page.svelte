<script type="ts">
	import Moment from '$lib/components/moment.svelte';

	export let data;
</script>

<Moment meta={data.meta} content={data.content} moments={data.moments} />
