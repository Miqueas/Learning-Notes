<script>
  let count = 0

  function doIncrement() {
    ++count
  }
</script>

<main>
  <p>Clicked {count} {count === 1 ? "time" : "times"}</p>
  <button on:click={doIncrement}>Click me!</button>
  {#if count > 100}
    <p>More than 100 clicks!? Oh my god!!!</p>
  {:else if count > 10}
    <p>You clicked more than 10 times!</p>
  {:else}
    <p>You clicked less than 10 times...</p>
  {/if}
</main>