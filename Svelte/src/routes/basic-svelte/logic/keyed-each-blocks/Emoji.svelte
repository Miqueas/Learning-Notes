<script>
  import * as emoji from "node-emoji"

  export let name
</script>

<main>
  <p>{emoji.get(name)} = {name}</p>
</main>