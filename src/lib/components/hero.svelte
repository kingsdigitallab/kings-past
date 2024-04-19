<script lang="ts">
  import * as config from "../config";
  import heroImg from "$images/strand.jpg";
  import { base } from "$app/paths";
</script>

<section class="hero">
  <div class="hero-welcome">
    <h1 class="hero-title">
      {#each config.hero.title as title}
        <div>{title}</div>
      {/each}
    </h1>
    <p class="hero-message">
      {config.hero.message}
    </p>
    <a href="{base}/about">
      <button>Learn more</button>
    </a>
  </div>
  <picture class="hero-img">
    <img src={heroImg} alt="A drawing ot the King's College Strand building" />
  </picture>
</section>

<style>
  .hero {
    display: grid;
    align-items: center;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: calc(100vh - var(--header-height));
    justify-items: center;
  }

  .hero-welcome {
    padding-right: var(--size-9);
  }

  .hero-title {
    display: grid;
    font-size: var(--font-size-fluid-2);
    grid-template-columns: max-content;
  }

  .hero-message {
    font-family: var(--font-serif);
    font-size: var(--font-size-fluid-1);
    padding-block: var(--size-5);
  }

  .hero-img {
    align-self: stretch;
    height: 100%;
    overflow: hidden;
    width: 100%;
  }

  .hero-img img {
    height: 100%;
    object-fit: cover;
    object-position: center;
    transform: scale(1.7);
    width: 100%;
  }

  @media (max-width: 768px) {
    .hero-title {
      font-size: var(--font-size-5);
    }
    .hero-message {
      font-size: var(--font-size-fluid-0);
    }
  }
</style>
