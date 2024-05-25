//TRABAJO PRACTICO N2
// COMISION 5
// VIVIANA QUIÑONEZ

PImage imagen1,imagen2, imagen3, imagen4 ;
PFont fuente;
int pantalla, tiempo, diametro;

void setup () {
  size (640,480);
  fuente= loadFont ("CenturyGothic-Bold-48.vlw");
  textFont (fuente);
  textSize (20);
  textAlign(LEFT, TOP);
  background (0);
  imagen1 = loadImage ("imagen1.jpg");
  imagen2 = loadImage ("imagen2.jpg");
  imagen3 = loadImage ("imagen3.jpg");
  imagen4 = loadImage ("imagen4.jpg");
  tiempo = 0;
  pantalla = 0;
  diametro = width/6;
  background (0); 
} 

void draw () {
  background(0);
  if(pantalla == 0) {
   image(imagen1,-70,20);  
  }
  
 if(pantalla == 1) {
    image (imagen2, 0, 0, 640, 480);
    push();
    text("Harry Potter es una saga creada en el año 1997 por J.K.Rowling,", 12,mouseY);
    text ("que cuenta de 6 libros de género novela y uno de teatro.",45, 420);
    pop ();
 }
  
  if(pantalla==2) {
    image (imagen3, 0, 0, width, height);
    push();
    textSize (13);
    text("Harry es un chico huérfano de padre y madre que vive con sus tíos muggles", mouseX,360);
    text ("Vernon y Petunia y su primo Dudley.",mouseX, 380);
    text ("Cuando Albus Dumbledore lo convoca para entrar al colegio Hogwarts de Magia y Hechicería,",mouseX,400);
    text ("su amigo Hagrid le regala una mascota llamada Hedwing.",mouseX,420);
    pop ();
  }
  
  if(pantalla==3){
    image (imagen4, 0, 0, width, height);
    push();
    textSize (18);
    text("Harry tiene dos amigos incondicionales a lo largo de toda la saga:", 10,360);
    text ("Hermione Granger y Ron Weasley.",10, 390);
    text ("Y un enemigo Draco Malfoy..",10,420);
    textSize (11);
    text ("En todos los libros \"ElQueNoDebeSerNombrado\" siempre lo quiere matar, y Harry con astucia, siempre se salva.",10,450);
    pop ();
    
    push();
    fill(255,255,0);
    circle(width/8, height/4, diametro);
    fill(255,0,0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width/8, height/4 );
    pop();
  } 
  
  tiempo++;
  
  if (tiempo >= 255) {
    tiempo = 0;
    if (pantalla != 3) {
      pantalla++;
    }
  }
 
  
} //fin del draw
    
void mouseClicked() {
  if (pantalla > 2) {
    pantalla = 0;
  }
  if (dist(mouseX, mouseY, width/2, height/2) < diametro/2) {
    pantalla = 0;
    tiempo = 0;
  }
}
