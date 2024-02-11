public class Main {
  public static void main(String[] args) {
    Coche miCoche = new Coche();
    miCoche.agregarPuerta();

    System.out.println(miCoche.puertas);
  }
}

public class Coche {
  public int puertas = 0;

  public void agregarPuerta() {
    this.puertas++;
  }
}