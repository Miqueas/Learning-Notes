<script>
  let count = 0

  function doIncrementCount() { ++count }
</script>

<main>
  <p>Clicked {count} {count === 1 ? "time" : "times"}!</p>
  <button on:click={doIncrementCount}>Increment</button>
</main>