let nombre = "Josué";
let apellido = "Martínez";
let yo = { nombre, apellido };
let expireTime = new Date().getTime() + 120000;

sessionStorage.setItem("yo", JSON.stringify(yo));
localStorage.setItem("yo", JSON.stringify(yo));
document.cookie = `yo=${JSON.stringify(yo)};expires=${expireTime}`;