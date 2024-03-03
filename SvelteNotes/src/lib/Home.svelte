<script>
  import { Link, linkHandle } from "svelte-micro"
  import { getRouteByName } from "./routes"

  const routes = [
    [ "Welcome",
      "Your first component",
      "Dynamic attributes",
      "Styling",
      "Nested components",
      "HTML tags",
    ],
    [ "Assignments",
      "Declarations",
      "Statements",
      "Updating arrays and objects",
    ]
  ]
</script>

<main class="home">
  <h5>What's Svelte?</h5>

  <p>I quote from the tutorial:</p>

  <blockquote>
    Svelte is a tool for building web applications. Like other user interface frameworks, it allows you
    to build your app declaratively out of components that combine markup, styles and behaviours.<br/>
    <br/>
    These components are compiled into small, efficient JavaScript modules that eliminate overhead
    traditionally associated with UI frameworks.<br/>
    <br/>
    You can build your entire app with Svelte (for example, using an application framework like SvelteKit,
    which this tutorial will cover), or you can add it incrementally to an existing codebase. You can
    also ship components as standalone packages that work anywhere.
  </blockquote>
  
  <p>That said, the following links correspond to every section in the tutorial.</p>

  <ul>
    <li><Link href="/">Home</Link></li>
    <li>Basic Svelte
      <ul>
        <li>Introduction
          <ul>
            {#each routes[0] as route}
              <li><Link href={getRouteByName(route).path}>{getRouteByName(route).name}</Link></li>
            {/each}
          </ul>
        </li>
        <li>Reactivity
          <ul>
            {#each routes[1] as route}
              <li><Link href={getRouteByName(route).path}>{getRouteByName(route).name}</Link></li>
            {/each}
          </ul>
        </li>
      </ul>
    </li>
  </ul>
</main>