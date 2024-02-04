<script>
  import * as emoji from "node-emoji"

  const BASE_URL = "https://api.github.com/users/"
  let username = ""
  let user = doGetUser()

  // Triggers reactivity
  function doUpdate() { user = doGetUser() }

  async function doGetUser() {
    if (username === "")
      throw new Error("No username given")
    
    let res = await fetch(BASE_URL + username)

    if (!res.ok)
      throw new Error(`Error ${res.status}`)

    return res.json()
  }
</script>

<main>
  <h1>Github user</h1>

  {#await user}
    <p><em>Loading...</em></p>
  {:then res}
    <p>
      <strong>Name</strong>: {res.name}<br/>
      <strong>Bio</strong>: {emoji.emojify(res.bio)}<br/>
      <strong>Link</strong>: <a href="{res.html_url}">{res.html_url}</a><br/>
      <strong>Repos</strong>: {res.public_repos}<br/>
      <strong>Gists</strong>: {res.public_gists}<br/>
      <strong>Followers</strong>: {res.followers}<br/>
      <strong>Following</strong>: {res.following}<br/>
    </p>
  {:catch error}
    <p>
      <strong>Something went wrong!</strong><br/>
      {error.message}
    </p>
  {/await}

  <input bind:value={username} placeholder="Username"/>
  <button on:click={doUpdate}>Get user</button>
</main>