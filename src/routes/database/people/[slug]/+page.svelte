<script lang="ts">
  export let data;
</script>

<article>
  <h1>{data.person.name}</h1>

  <section>
    <h2>Metadata</h2>
    <dl>
      <dt>Alternative names</dt>
      <dd>
        {#if data.person.alternative_names}{data.person.alternative_names}{/if}
      </dd>
      <dt>Gender</dt>
      <dd>{data.person.gender}</dd>
      <dt>Nationality</dt>
      <dd>{data.person.nationality}</dd>
      <dt>Ethnicity</dt>
      <dd>{data.person.ethnicity}</dd>
      <dt>Languages</dt>
      <dd>{data.person.languages}</dd>
    </dl>
  </section>

  {#if data.knows}
    <section>
      <h2>Knows</h2>
      <ul>
        {#each data.knows as knows}
          {#if knows.person === data.person.slug}
            <li><a href={knows.knows}>{data.people[knows.knows].name}</a></li>
          {:else}
            <li><a href={knows.person}>{data.people[knows.person].name}</a></li>
          {/if}
        {/each}
      </ul>
    </section>
  {/if}

  {#if data.person.description}
    <article>
      <h2>About</h2>
      <p>{data.person.description}</p>
    </article>
  {/if}
</article>
