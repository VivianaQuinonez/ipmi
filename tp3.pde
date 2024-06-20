//TRABAJO PRACTICO N3
// COMISION 5
// VIVIANA QUIÑONEZ LUGONES
// Enlace YuoTube: https://youtu.be/Log2wcr0jso?si=7AaY4Dlh1SB2YdFR
PImage img;

// Ancho del cuadrado
float BASE;
int alpha;

int desplazamiento;

float zoom;

// Colores de los cuadrados
color lila = color(77, 39, 97);
color amarillo = color(246, 230, 1);
color verde = color(96, 138, 64);
color rojo = color(150, 52, 5);
color azul = color(79, 102, 206);
color naranja = color(200, 137, 2);

// Matriz de dos dimensiones con patrón de colores de las cruces
color[][] matrizColores1 = {
  {azul, lila, verde, verde, verde, naranja, amarillo, rojo, rojo, rojo},
  {azul, azul, amarillo, verde, naranja, naranja, naranja, lila, rojo, azul},
  {azul, amarillo, amarillo, amarillo, rojo, naranja, lila, lila, lila, verde},
  {verde, naranja, amarillo, rojo, rojo, rojo, azul, lila, verde, verde},
  {naranja, naranja, naranja, lila, rojo, azul, azul, azul, amarillo, verde},
  {rojo, naranja, lila, lila, lila, verde, azul, amarillo, amarillo, amarillo},
  {rojo, rojo, azul, lila, verde, verde, verde, naranja, amarillo, rojo},
  {rojo, azul, azul, azul, amarillo, verde, naranja, naranja, naranja, lila},
  {lila, verde, azul, amarillo, amarillo, amarillo, rojo, naranja, lila, lila},
  {verde, verde, verde, naranja, amarillo, rojo, rojo, rojo, azul, lila},
  {amarillo, verde, naranja, naranja, naranja, lila, rojo, azul, azul, azul},
  {amarillo, amarillo, rojo, naranja, lila, lila, lila, verde, azul, amarillo},
  {amarillo, rojo, rojo, rojo, azul, lila, verde, verde, verde, naranja},
  {naranja, lila, rojo, azul, azul, azul, amarillo, verde, naranja, naranja},
  {lila, lila, lila, verde, azul, amarillo, amarillo, amarillo, rojo, naranja},
};

void cuadrado(float x, float y, float h, int r, int g, int b, int a) {
  noStroke();
  fill(r, g, b, a);
  rect(x, y, h, h);
}

color getColor ( int i, int j , int desp, color[][] mc) {
  return mc[j % 15][(i + desp) % 10];
}

void setup() {
  size(800, 400);
  background(255);

  img = loadImage("crucestp3.jpg");

  
  alpha = 0;
  desplazamiento = 6;
  zoom = 32.0; 
  
  BASE = width / zoom; // Calcular BASE después de definir el tamaño de la ventana
}

void draw() {
  background(255); // Asegurar que el fondo se limpie cada vez que se dibuje
  image(img, 0, 0, 400, 400);

  // Valor inicial de la posición x e y
  float x = 400;
  float y = 0;

  // Actualizar el valor de alpha basado en la posición del mouse
  alpha = (int)(map(mouseX, 0, width, 50, 255));
   
  // Calcular BASE después de definir el tamaño de la ventana
  BASE = width / zoom;

  for (int j = 0; j <= 23; j++) {
    for (int i = 0; i <= 30; i++) {
      color fondo = getColor( i, j, desplazamiento, matrizColores1); 
      //color fondo = matrizColores1[j % 15][(i + desplazamiento) % 10];
      int r = (int) red(fondo);
      int g = (int) green(fondo);
      int b = (int) blue(fondo);

      cuadrado(x, y, BASE, r, g, b, alpha);

      // Me desplazo en el eje x 1 cuadradito
      x += BASE;
    }

    // Vuelvo al inicio de x
    x = 400;

    // Me desplazo en el eje y 1 cuadradito hacia abajo
    y += BASE;
  }
  
  push();
    fill(202,216,211);
    circle(width/4 + 2, height * 0.82  , 106);
    fill(0);
    circle(width/4, height * 0.82 , 100);
    fill(202,216,211);
    textSize(23);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width/4, height * 0.82 );
    pop();
    
}

void keyPressed() {
  if (key >= '0' && key <= '9') {
    desplazamiento = key - '0'; // Corregir el valor del desplazamiento
  }

}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  //println(e);
  
  zoom += 2*e;
  
  if ((zoom + e) <=16) {
    zoom = 16;
  } 
  
  if ((zoom + e) >=48){
    zoom = 48;
  }
    
}

void mouseClicked() {
  if (dist(mouseX, mouseY, width/4, height * 0.82) < 50) {
    alpha = 0;
    desplazamiento = 6;
    zoom = 32.0; 
  }
}
