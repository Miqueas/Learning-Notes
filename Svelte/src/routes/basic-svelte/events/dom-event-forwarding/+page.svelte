<script>
  import MyButton from "./MyButton.svelte"
  import horn from "./horn.mp3"

  const audio = new Audio()
  audio.src = horn

  function doPlay() {
    audio.load()
    audio.play()
  }
</script>

<main>
  <MyButton on:click={doPlay}/>
</main>