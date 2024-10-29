<script lang="ts">
	import Entity from '$lib/components/EntityDetails.svelte';
	export let data;

	const { donation, meta, description, urls } = data;
</script>

<Entity entity={donation} entityType="Donation" {meta} {description} {urls}></Entity>
