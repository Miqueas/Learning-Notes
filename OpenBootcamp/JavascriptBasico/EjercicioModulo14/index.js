let btn = document.querySelector("#btn");

btn.addEventListener("click", () => alert("Me has clickeado!"));

$("#btn").click(() => console.log("Hola, estoy usando jQuery"));