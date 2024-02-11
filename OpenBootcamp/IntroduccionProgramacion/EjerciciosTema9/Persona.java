public class Main {
  public static void main(String[] args) {
    Cliente c = new Cliente(48500);
    c.edad = 34;
    c.nombre = "Pedro";
    c.telefono = "+0123456789";

    Trabajador t = new Trabajador(2300);
    t.edad = 26;
    t.nombre = "Carlos";
    t.telefono = "+0987654321";

    System.out.println("Con " + c.edad + " años, " + c.nombre + " pudo obtener un crédito de US $" + c.credito + "!");
    System.out.println(t.nombre + " tiene solo 3 meses trabajando y gana US $" + t.salario + " al mes!");
  }
}

public class Persona {
  public int edad;
  public String nombre;
  public String telefono;
}

public class Cliente extends Persona {
  public double credito;

  public Cliente(double credito) {
    this.credito = credito;
  }
}

public class Trabajador extends Persona {
  public double salario;

  public Trabajador(double salario) {
    this.salario = salario;
  }
}