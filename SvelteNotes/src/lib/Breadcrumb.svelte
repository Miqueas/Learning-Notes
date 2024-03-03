<script>
  import { Link, linkHandle, path } from "svelte-micro"
  import { getRouteByPath } from "./routes"

  let currentRoute

  path.subscribe(value => currentRoute = value)
</script>

<nav use:linkHandle class="breadcrumb">
  {#if currentRoute !== "/"}
    <Link href="/">Home</Link>
    &gt;
    <Link href={currentRoute} style="font-weight: bold; font-style: italic;">
      {getRouteByPath(currentRoute).name}
    </Link>
  {/if}
</nav>

<style>
  .breadcrumb {
    margin-bottom: 12px;
  }
</style>