class ColombianPeso {
  String codeName = "COP";
  String symbol = "\$";

  static double copToUsd() {
    return 0.000239;
  }

  static double usdToCop() {
    return 4.184;
  }
}

void main() {
  print(ColombianPeso.copToUsd());
  print(ColombianPeso.usdToCop());
}