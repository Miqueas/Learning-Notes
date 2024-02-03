<script>
  let colors = [ "#db0f3b", "#f0501e", "#dbab0f", "#3bdb0f", "#0f60db", "#820fdb" ];
  let selected = colors[0];
</script>

<main>
  <div class="box" style="background-color: {selected}"></div>
  <h1>Pick a color</h1>
  {#each colors as color, index}
    <button
      aria-current={selected == color}
      aria-label={color}
      style="background-color: {color}"
      on:click={() => selected = color}
    >{index + 1}</button>
  {/each}
</main>

<style>
  .box {
    width: 200px;
    height: 200px;
    border-radius: 10px;
  }

  button {
    margin: 4px;
    padding: 14px;
  }

  button[aria-current="true"] {
    padding: 18px;
    font-weight: bold;
    font-size: 14pt;
  }
</style>