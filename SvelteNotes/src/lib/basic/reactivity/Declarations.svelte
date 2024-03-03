<script>
  let count = 0

  // The `$` tells to Svelte to "re-run this code whenever the value of `count` changes". This is also known as a
  // computed property.
  $: doubled = count * 2

  function doIncrementCount() { ++count }
</script>

<main>
  <p>Clicked {count} {count === 1 ? "time" : "times"}!</p>
  <p>{count} doubled is {doubled}</p>
  <button on:click={doIncrementCount}>Increment</button>
</main>