<script lang="ts">
  import { base } from "$app/paths";
  import { page } from "$app/stores";

  let breadcrumbs: Array<{ label: string; href: string }> = [];

  $: {
    const parts = $page.url.pathname.split("/").filter((part) => part !== "");

    let currentPath = "";
    breadcrumbs = parts.map((part: string) => {
      currentPath = `${currentPath}/${part}`;
      return {
        label: part.toLowerCase().replace(/\b\w/g, (s) => s.toUpperCase()),
        href: currentPath,
      };
    });

    breadcrumbs.unshift({ label: "Home", href: `${base}/` });
  }
</script>

{#if breadcrumbs.length > 2}
  <nav aria-label="Breadcrumb" class="surface-3">
    <ol>
      {#each breadcrumbs as crumb, index}
        <li>
          {#if index < breadcrumbs.length - 1}
            <a href={crumb.href}>{crumb.label}</a>
          {/if}
        </li>
      {/each}
    </ol>
  </nav>
{/if}

<style>
  nav {
    align-content: center;
    height: calc(var(--header-height) / 2);
    padding-inline: var(--size-2);

    & ol {
      align-items: center;
      display: inline-flex;
      gap: 0.5rem;

      & li:not(:last-child)::after {
        content: ">";
      }
    }
  }
</style>
