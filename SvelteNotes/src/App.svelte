<script>
  import { Route, Link, linkHandle, path } from "svelte-micro"

  import Header from "./lib/Header.svelte"
  import Home from "./lib/Home.svelte"
  import Breadcrumb from "./lib/Breadcrumb.svelte"

  // Introduction components
  import Welcome from "./lib/basic/introduction/Welcome.svelte"
  import YourFirstComponent from "./lib/basic/introduction/YourFirstComponent.svelte"
  import DynamicAttributes from "./lib/basic/introduction/DynamicAttributes.svelte"
  import Styling from "./lib/basic/introduction/Styling.svelte"
  import NestedComponents from "./lib/basic/introduction/NestedComponents.svelte"
  import HtmlTags from "./lib/basic/introduction/HtmlTags.svelte"

  // Reactivity components
  import Assignments from "./lib/basic/reactivity/Assignments.svelte"
  import Declarations from "./lib/basic/reactivity/Declarations.svelte"
  import Statements from "./lib/basic/reactivity/Statements.svelte"
  import UpdatingArraysAndObjects from "./lib/basic/reactivity/UpdatingArraysAndObjects.svelte"
</script>

<Header/>
<Breadcrumb/>
<Route >
  <Route path="/">
    <Home/>
  </Route>

  <Route path="/basic">
    <Route path="/introduction">
      <Route path="/welcome">
        <Welcome/>
      </Route>

      <Route path="/your-first-component">
        <YourFirstComponent/>
      </Route>

      <Route path="/dynamic-attributes">
        <DynamicAttributes/>
      </Route>

      <Route path="/styling">
        <Styling/>
      </Route>

      <Route path="/nested-components">
        <NestedComponents/>
      </Route>

      <Route path="/html-tags">
        <HtmlTags/>
      </Route>
    </Route>

    <Route path="/reactivity">
      <Route path="/assignments">
        <Assignments/>
      </Route>

      <Route path="/declarations">
        <Declarations/>
      </Route>

      <Route path="/statements">
        <Statements/>
      </Route>

      <Route path="/updating-arrays-and-objects">
        <UpdatingArraysAndObjects/>
      </Route>
    </Route>
  </Route>
</Route>