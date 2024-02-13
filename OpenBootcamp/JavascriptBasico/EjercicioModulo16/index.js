let parrafos = document.querySelectorAll(".parrafo");
let secciones = document.querySelectorAll(".seccion");
let papelera = document.querySelector(".papelera");

for (let parrafo of parrafos) {
  parrafo.addEventListener("dragstart", ev => {
    console.log(`Dragging: ${parrafo.innerText}`);
    parrafo.classList.add("dragging");
    ev.dataTransfer.setData("id", parrafo.id);
  });

  parrafo.addEventListener("dragend", ev => parrafo.classList.remove("dragging"));
}

for (let seccion of secciones) {
  seccion.addEventListener("dragover", ev => ev.preventDefault());
  seccion.addEventListener("drop", ev => {
    let pId = ev.dataTransfer.getData("id");
    let pEl = document.getElementById(pId);
    seccion.appendChild(pEl);
    console.log(`Dropped: ${pEl}`);
  });
}

papelera.addEventListener("dragover", ev => ev.preventDefault());
papelera.addEventListener("drop", ev => document.getElementById(ev.dataTransfer.getData("id")).remove());