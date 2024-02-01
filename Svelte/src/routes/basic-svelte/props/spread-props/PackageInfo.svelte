<script>
  export let name
  export let version
  export let speed
  export let website

  $: href = `https://www.npmjs.com/package/${name}`
</script>

<main>
  <p>
    The <code>{name}</code> package is {speed} fast. Download version {version} from
    <a {href}>npm</a> and learn more <a href={website}>here</a>.
  </p>
</main>