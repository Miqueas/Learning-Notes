<script>
  import Emoji from "./Emoji.svelte"

  let name = ""
  let list = [
    { id: 0, name: "apple" },
    { id: 1, name: "banana" },
    { id: 2, name: "carrot" },
    { id: 3, name: "egg" },
    { id: 4, name: "doughnut" },
    { id: 5, name: "eggplant" },
    { id: 6, name: "potato" },
  ]

  function doRemove() {
    list = list.slice(1)
  }
</script>

<main>
  <h1>Some emojis</h1>
  <button on:click={doRemove}>Remove first</button>
  <ul>
    {#each list as item (item.id)}
      <li><Emoji name={item.name}></Emoji></li>
    {/each}
  </ul>
</main>