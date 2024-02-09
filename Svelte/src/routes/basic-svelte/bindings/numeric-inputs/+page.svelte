<script>
  let x = 0
  let y = 0
</script>

<main>
  <p><strong>X</strong>({x}) + <strong>Y</strong>({y}) = {x + y}</p>

  <label>
    <span><strong>X</strong> = </span>
    <input type="number" bind:value={x} min="0" max="100" />
    <input type="range" bind:value={x} min="0" max="100" />
  </label>
  <br/>
  <label>
    <span><strong>Y</strong> = </span>
    <input type="number" bind:value={y} min="0" max="100" />
    <input type="range" bind:value={y} min="0" max="100" />
  </label>
</main>