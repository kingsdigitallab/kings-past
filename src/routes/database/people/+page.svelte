<script lang="ts">
  export let data;
</script>

<article>
  <header>
    <h1>People</h1>
  </header>

  <section>
    <ul>
      {#each data.people as person}
        <li><a href="{data.url}/{person.slug}">{person.name}</a></li>
      {/each}
    </ul>
  </section>
</article>
