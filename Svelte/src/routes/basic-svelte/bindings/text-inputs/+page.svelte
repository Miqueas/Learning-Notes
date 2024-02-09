<script>
	let name = "world"
</script>

<main>
  <h1>Hello{name === "" ? "" : ", " + name}!</h1>
  <input bind:value={name} />
</main>