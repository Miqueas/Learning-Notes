<script>
  let mouse = { x: 0, y: 0 }

  function doHandleMouseMove(event) {
    mouse.x = event.clientX
    mouse.y = event.clientY
  }
</script>

<main>
  <div on:pointermove={doHandleMouseMove}>
    Mouse pointer is at {mouse.x} x {mouse.y}
  </div>
</main>

<style>
  div {
    color: #fafafa;
    font-weight: bold;
    padding: 100px;
    height: 600px;
    background-color: rgb(240, 80, 30);
  }
</style>