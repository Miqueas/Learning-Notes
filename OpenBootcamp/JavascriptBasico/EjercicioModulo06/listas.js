let compras = [ "Leche", "Crema de leche", "Tocineta", "Harina", "Ramen" ];
compras.push("Aceite de girasol");
compras.pop();

let peliculas = [
  { titulo: "Interestelar", director: "Christopher Nolan", fecha: new Date(2014, 9, 26) },
  { titulo: "Terminator 3: La rebelión de las máquinas", director: "Jonathan Mostow", fecha: new Date(2003, 6, 30) },
  { titulo: "Meteoro: La película", director: "Hermanas Wachowski", fecha: new Date(2008, 4, 9) }
];

let despues2010 = peliculas.filter(v => v.fecha.getFullYear() >= 2010);
let directores = peliculas.map(v => v.director);
let titulos = peliculas.map(v => v.titulo);
let directoresTitulosConcat = directores.concat(titulos);
let directoresTitulosPropag = [ ...directores, ...titulos ];