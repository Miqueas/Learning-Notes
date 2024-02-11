<script>
  let scoops = 1
  let flavors = []

  const formatter = new Intl.ListFormat("en", {
    style: "long",
    type: "conjunction",
  })
</script>

<main>
  {#each [1,2,3] as number}
    <label>
      <input
        type="radio"
        name="scoped"
        value={number}
        bind:group={scoops}
      />

      {number} {number === 1? "scoop" : "scoops"}
    </label>
  {/each}

  {#each ["Cookies and cream", "Mint choc chip", "Raspberry ripple"] as flavor}
    <label>
      <input
        type="checkbox"
        name="flavors"
        value={flavor}
        bind:group={flavors}
      />

      {flavor}
    </label>
  {/each}

  {#if flavors.length === 0}
    <p>Please select at least one flavor</p>
  {:else if flavors.length > scoops}
    <p>Can't order more flavors</p>
  {:else}
    <p>
      You ordered {scoops} {scoops === 1? "scoop" : "scoops"} of {formatter.format(flavors)}
    </p>
  {/if}
</main>