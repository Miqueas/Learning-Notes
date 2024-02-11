public class Main {
  public static void main(String[] args) {
    String estacion = "verano";

    switch (estacion) {
      case "invierno":
        System.out.println("Estamos en " + estacion);
        break;
      case "primavera":
        System.out.println("Estamos en " + estacion);
        break;
      case "verano":
        System.out.println("Estamos en " + estacion);
        break;
      case "otoño":
        System.out.println("Estamos en " + estacion);
        break;
      default:
        System.out.println("No estamos en ninguna estación conocida");
    }
  }
}