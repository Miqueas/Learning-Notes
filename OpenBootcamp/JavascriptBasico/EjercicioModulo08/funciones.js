function verdadero() {
  return true;
}

async function promesa() {
  return setTimeout(() => console.log("Hola, soy una promesa"), 5000);
}

function* pares() {
  let i = 2;

  do {
    yield i;
    i += 2;
    if (i === 100) return i;
  } while(true);
}