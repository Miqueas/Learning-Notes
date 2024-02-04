<script>
  let mouse = { x: 0, y: 0 }
</script>

<main>
  <div on:pointermove={
    (event) => mouse = { x: event.clientX, y: event.clientY }
  }>
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