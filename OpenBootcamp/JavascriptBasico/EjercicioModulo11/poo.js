class Estudiante {
  constructor (nombre) {
    this.nombre = nombre;
    this.asignaturas = [ "Javascript", "HTML", "CSS" ];
  }

  obtenDatos() {
    return { nombre: this.nombre, asignaturas: this.asignaturas };
  }
}

let e = new Estudiante("Pedro");
e.obtenDatos();