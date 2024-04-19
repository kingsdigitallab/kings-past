<script lang="ts">
  import { RectangleHorizontal, RectangleVertical } from "lucide-svelte";
  import { base } from "$app/paths";

  export let data;
</script>

<svelte:head>
  <title>{data.meta.title}</title>
  <meta property="og:title" content={data.meta.title} />
  <meta property="og:type" content="article" />
</svelte:head>

<article id="moment">
  <p class="n">
    <strong>Moment {data.meta.n}</strong>
  </p>

  <header class="surface-2">
    <h1>{data.meta.title}</h1>
    <ol>
      {#each data.moments as moment}
        <li>
          <a
            href={String(moment.n).padStart(2, "0")}
            class:active={moment.n === data.meta.n}
            title="Moment {moment.n}"
          >
            {#if moment.n === data.meta.n}
              <RectangleHorizontal />
            {:else}
              <RectangleVertical />
            {/if}
          </a>
        </li>
      {/each}
    </ol>
    <img
      src="{base}{data.meta.feature.image}"
      alt={data.meta.feature.description}
      title={data.meta.feature.title}
    />
  </header>

  <article class="content">
    <div class="md">
      <svelte:component this={data.content} />
    </div>
  </article>
</article>

<style>
  #moment {
    margin-block: var(--section-margin);

    & > p {
      font-family: var(--font-headings);
      font-size: var(--font-size-5);
      padding-inline: var(--header-padding-inline);
    }
  }

  header {
    padding-top: var(--size-8);

    & h1 {
      max-inline-size: none;
      padding-inline: var(--header-padding-inline);
      text-wrap: auto;
    }

    & img {
      height: 100%;
      object-fit: cover;
      object-position: center;
      width: 100%;
    }

    & ol {
      display: flex;
      gap: var(--size-5);
      padding-block: var(--size-4);
      padding-inline: var(--header-padding-inline);
    }
  }

  .content {
    background: var(--background);
    display: grid;
    font-family: var(--font-serif);
    margin-inline: auto;
    margin-top: calc(-1 * var(--size-11));
    max-inline-size: var(--size-lg);
    place-items: center;
    position: relative;
  }
</style>
