void main() {
  print("FAHRENHEIT    CELSIUS");
  for (int cel = 0; cel <= 100; cel = cel + 10) {
    double far  = (cel*9/5)+32;
    print("${far}°F          ${cel}°C");
  }
}