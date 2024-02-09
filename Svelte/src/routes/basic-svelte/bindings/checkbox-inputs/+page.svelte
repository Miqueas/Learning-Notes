<script>
  let accepted = false
  let display = "block"

  function doCloseMessage() {
    display = "none"
  }
</script>

<main>
  <div style="display: {display};">
    <p>This site has cookies, do you accept them?</p>
    <input type="checkbox" bind:checked={accepted} />
    <span>Yes</span>
    <br/><br/>
    <button disabled={!accepted} on:click={doCloseMessage}>Close message</button>
  </div>
</main>