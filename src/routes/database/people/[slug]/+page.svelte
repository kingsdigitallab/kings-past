<script lang="ts">
  export let data;
</script>

<article>
  <h1>{data.item.name}</h1>

  <section>
    <h2>Metadata</h2>
    <dl>
      <dt>Alternative names</dt>
      <dd>
        {#if data.item.alternative_names}{data.item.alternative_names}{/if}
      </dd>
      <dt>Gender</dt>
      <dd>{data.item.gender}</dd>
      <dt>Nationality</dt>
      <dd>{data.item.nationality}</dd>
      <dt>Ethnicity</dt>
      <dd>{data.item.ethnicity}</dd>
      <dt>Languages</dt>
      <dd>{data.item.languages}</dd>
    </dl>
  </section>

  {#if data.item.description}
    <article>
      <h2>About</h2>
      <p>{data.item.description}</p>
    </article>
  {/if}
</article>
