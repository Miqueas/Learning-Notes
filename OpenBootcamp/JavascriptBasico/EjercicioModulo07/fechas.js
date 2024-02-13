let hoy = new Date();
let nacimiento = new Date(2000, 7, 29);
let despues = hoy.getTime() > nacimiento.getTime();
let dia = nacimiento.getDate();
let mes = nacimiento.getMonth() + 1;
let año = nacimiento.getFullYear();

console.log(año);