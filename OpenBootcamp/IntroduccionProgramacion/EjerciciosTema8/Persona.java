public class Main {
  public static void main(String[] args) {
    Persona p = new Persona();
    p.setEdad(22);
    p.setNombre("Fulano");
    p.setTelefono("+0123456789");

    System.out.println(p.getEdad());
    System.out.println(p.getNombre());
    System.out.println(p.getTelefono());
  }
}

public class Persona {
  private int edad;
  private String nombre;
  private String telefono;

  // Setters
  public void setEdad(int edad) { this.edad = edad; }
  public void setNombre(String nombre) { this.nombre = nombre; }
  public void setTelefono(String telefono) { this.telefono = telefono; }

  // Getters
  public int getEdad() { return this.edad; }
  public String getNombre() { return this.nombre; }
  public String getTelefono() { return this.telefono; }
}