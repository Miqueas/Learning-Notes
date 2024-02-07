<script>
  import External from "./External.svelte"

  function doHandleEvent(event) {
    alert(event.detail.text)
  }
</script>

<main>
  <External on:greet={doHandleEvent}/>
</main>