void main() {
  double resultado;

  try {
    hacerAlgo(true);
  } catch (e) {
    print("Falló!");
  }

  try {
    resultado = 9 / 0;
    print(resultado);
  } on UnsupportedError {
    print("No se puede dividir entre cero!");
  } catch (e) {
    print("Error: ${e}");
  } finally {
    print("Se ejecutaron las instrucciones");
  }
}

void hacerAlgo([bool fallar = false]) {
  if (fallar)
    throw Exception("Excepción intencional");

  print("(Algo importante se está haciendo aquí)");
}