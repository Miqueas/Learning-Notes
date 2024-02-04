<script>
  import { createEventDispatcher } from "svelte"

  const dispatch = createEventDispatcher()

  function doDispatchEvent() {
    dispatch("greet", { text: "Hi there!" })
  }
</script>

<main>
  <button on:click={doDispatchEvent}>Click me!</button>
</main>