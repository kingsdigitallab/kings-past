<script lang="ts">
  export let data;
</script>

<article>
  <h1>{data.item.name}</h1>
  {#if data.item.description}
    <p>{data.item.description}</p>
  {/if}
</article>
