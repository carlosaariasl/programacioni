abstract class Vehiculo {
  String marca;
  int x, y, velocidad;
  color colorVehiculo;

  Vehiculo(String marca, int x, int y, int velocidad, color colorVehiculo) {
    this.marca = marca;
    this.x = x;
    this.y = y;
    this.velocidad = velocidad;
    this.colorVehiculo = colorVehiculo;
  }

  // Método abstracto para el movimiento del vehículo
  abstract void mover();

  // Método común para mostrar el vehículo
  void mostrar() {
    fill(colorVehiculo);
    rect(x, y, 80, 40);  // Cuerpo del vehículo
    fill(0);
    ellipse(x + 20, y + 40, 20, 20);  // Rueda 1
    ellipse(x + 60, y + 40, 20, 20);  // Rueda 2
    fill(255);
    textSize(12);
    text(marca, x + 10, y + 25);
  }
}

class Coche extends Vehiculo {
  Coche(String marca, int x, int y, int velocidad) {
    super(marca, x, y, velocidad, color(255, 0, 0));  // Rojo para el coche
  }

  // Implementación del movimiento
  void mover() {
    x += velocidad * 0.1;
  }
}

class Bicicleta extends Vehiculo {
  Bicicleta(String marca, int x, int y, int velocidad) {
    super(marca, x, y, velocidad, color(0, 0, 255));  // Azul para la bicicleta
  }

  // Implementación del movimiento
  void mover() {
    x += velocidad * 0.05;
  }
}

Coche coche;
Bicicleta bicicleta;

void setup() {
  size(400, 400);
  coche = new Coche("Toyota", 50, 100, 5);
  bicicleta = new Bicicleta("Giant", 50, 200, 2);
}

void draw() {
  background(255);

  // Mover y mostrar vehículos
  coche.mover();
  bicicleta.mover();
  coche.mostrar();
  bicicleta.mostrar();
}
