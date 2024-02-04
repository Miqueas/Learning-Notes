<script>
  import MyEvent from "./MyEvent.svelte"

  function doHandleEvent(event) {
    alert(event.detail.text)
  }
</script>

<main>
  <MyEvent on:greet={doHandleEvent}/>
</main>