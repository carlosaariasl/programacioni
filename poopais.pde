abstract class Pais {
  String nombre;
  String idioma;
  int x, y, colorR, colorG, colorB;

  Pais(String nombre, String idioma, int x, int y, int colorR, int colorG, int colorB) {
    this.nombre = nombre;
    this.idioma = idioma;
    this.x = x;
    this.y = y;
    this.colorR = colorR;
    this.colorG = colorG;
    this.colorB = colorB;
  }

  // Método abstracto para mostrar información
  abstract void infoPais();

  // Método común para dibujar el país
  void mostrar() {
    fill(colorR, colorG, colorB);
    rect(x, y, 100, 50);
    fill(0);
    textSize(12);
    text(nombre, x + 5, y + 20);
  }
}

class Mexico extends Pais {
  Mexico(int x, int y) {
    super("Mexico", "Español", x, y, 0, 255, 0);  // Verde para México
  }

  void infoPais() {
    println("Mexico: Cultura rica, comida deliciosa.");
  }
}

class Canada extends Pais {
  Canada(int x, int y) {
    super("Canada", "Inglés y Francés", x, y, 255, 0, 0);  // Rojo para Canadá
  }

  void infoPais() {
    println("Canada: Gran naturaleza y multiculturalidad.");
  }
}

Mexico mexico;
Canada canada;

void setup() {
  size(400, 400);
  mexico = new Mexico(50, 150);
  canada = new Canada(200, 150);
}

void draw() {
  background(255);

  // Mostrar países
  mexico.mostrar();
  canada.mostrar();
}

void mousePressed() {
  if (mouseX > mexico.x && mouseX < mexico.x + 100 && mouseY > mexico.y && mouseY < mexico.y + 50) {
    mexico.infoPais();
  } 
  if (mouseX > canada.x && mouseX < canada.x + 100 && mouseY > canada.y && mouseY < canada.y + 50) {
    canada.infoPais();
  }
}
