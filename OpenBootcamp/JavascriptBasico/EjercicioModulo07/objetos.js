let me = {
  nombre: "Miqueas",
  apellido: "Martínez",
  edad: 22,
  altura: 185,
  esDesarrollador: false
};

let { edad } = me;
let amigos = [
  me,
  {
    nombre: "Neil",
    apellido: "Wolfkid",
    edad: 18,
    altura: 186,
    esDesarrollador: true
  },
  {
    nombre: "Nahuel",
    apellido: "Gómez",
    edad: 24,
    altura: 168,
    esDesarrollador: true
  }
];

let amigosOrdenados = amigos.sort((a, b) => b.edad - a.edad);