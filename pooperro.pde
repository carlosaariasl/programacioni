abstract class Animal {
  String nombre;
  int x, y, colorR, colorG, colorB;

  // Constructor
  Animal(String nombre, int x, int y, int colorR, int colorG, int colorB) {
    this.nombre = nombre;
    this.x = x;
    this.y = y;
    this.colorR = colorR;
    this.colorG = colorG;
    this.colorB = colorB;
  }

  // Método abstracto
  abstract void sonido();

  // Método común para mover el animal
  void mover() {
    x += random(-5, 5);
    y += random(-5, 5);
  }

  // Método común para mostrar el animal
  void mostrar() {
    fill(colorR, colorG, colorB);
    ellipse(x, y, 40, 40);
  }
}

class Perro extends Animal {
  Perro(String nombre, int x, int y) {
    super(nombre, x, y, 255, 200, 0);  // Naranja para el perro
  }

  // Implementación del método abstracto
  void sonido() {
    println(nombre + " dice: Guau!");
  }
}

class Gato extends Animal {
  Gato(String nombre, int x, int y) {
    super(nombre, x, y, 0, 0, 255);  // Azul para el gato
  }

  // Implementación del método abstracto
  void sonido() {
    println(nombre + " dice: Miau!");
  }
}

Perro perro;
Gato gato;

void setup() {
  size(400, 400);
  perro = new Perro("Rex", 100, 100);
  gato = new Gato("Whiskers", 300, 300);
}

void draw() {
  background(255);
  
  // Mover y mostrar animales
  perro.mover();
  gato.mover();
  perro.mostrar();
  gato.mostrar();
  
  // Llamar al sonido (polimorfismo)
  perro.sonido();
  gato.sonido();
}
