<script>
  let selected
  let answer = ""
  let questions = [
    { id: 1, text: "Where did you go to school?"},
    { id: 2, text: "What is your favorite color?"},
    { id: 3, text: "What is your favorite animal?"},
    { id: 4, text: "What is your favorite food?"},
    { id: 5, text: "What is your mother's name?"},
    { id: 6, text: "What is your father's name?"},
  ]

  function doHandleSubmit() {}
</script>

<main>
  <h1>Security questions</h1>

  <form on:submit|preventDefault={doHandleSubmit}>
    <select bind:value={selected} on:change={() => { answer = "" }}>
      {#each questions as question}
        <option value={question.id}>{question.text}</option>
      {/each}
    </select>

    <input bind:value={answer} />

    <button disabled={!answer} type="submit">Submit</button>
  </form>

  <p>Selected question: {selected ? selected : "(none yet)"}</p>
</main>