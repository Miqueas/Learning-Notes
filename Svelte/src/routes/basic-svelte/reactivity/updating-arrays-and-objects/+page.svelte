<script>
  let numbers = [1, 2, 3, 4]
  $: sum = numbers.reduce((total, current) => total + current, 0)

  function doAddNumber() {
    // Using `.push()` doesn't trigger reactivity since Svelte's reactivity system works by assignments.
    numbers = [...numbers, numbers.length + 1]
  }
</script>

<main>
  <p>{numbers.join(" + ")} = {sum}</p>
  <button on:click={doAddNumber}>Add number</button>
</main>