<script lang="ts">
  export let data;
</script>

<article>
  <header>
    <h1>Donations</h1>
  </header>

  <section>
    <ul>
      {#each data.collection as item}
        <li><a href="{data.url}/{item.slug}">{item.name}</a></li>
      {/each}
    </ul>
  </section>
</article>
