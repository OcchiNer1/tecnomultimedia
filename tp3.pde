//Santiago 85122/3
//https://youtu.be/zJ7tZklt5oU
PImage fondo, compi, columna, welcomescreen;
PFont letra;
int game, puntuacion, record, x, y, vertical;
int wallx[] = new int[2], wally[] =new int[2];
void setup() {
   fondo =loadImage("C:/Users/santo/Desktop/tp3_version_2/data/descarga.jpg");
   compi =loadImage("C:/Users/santo/Desktop/tp3_version_2/data/cuervo.png");
   columna =loadImage("C:/Users/santo/Desktop/tp3_version_2/data/columna.png");
   welcomescreen=loadImage("C:/Users/santo/Desktop/tp3_version_2/data/descarga.jpg");
   letra= createFont("C:/Users/santo/Desktop/tp3_version_2/data/OldLondon.ttf",40);
   game = 1; puntuacion = 0; record = 0; x = -200; vertical = 0; 
  size(600,800);
  fill(255);
  textSize(20);  
textFont(letra);
}
void draw() { 
  if(game == 0) {
    imageMode(CORNER);
    image(fondo, x, 0);
    image(fondo, x+fondo.width, 0);
    
    x -= 5;
    vertical += 1;
    y += vertical;
      if(x<-fondo.width) x = 0;
        for(int i = 0 ; i < 2; i++) {
          imageMode(CENTER);
          image(columna, wallx[i], wally[i] - (columna.height/2+100));
          image(columna, wallx[i], wally[i] + (columna.height/2+100));
            
            if(wallx[i] < 0) {
              wally[i] = (int)random(200,height-200);
                wallx[i] = width;}
      if(wallx[i] == width/2) record = max(++puntuacion, record);
      if(y>height||y<0||(abs(width/2-wallx[i])<25 && abs(y-wally[i])>100)) game=1;
      wallx[i] -= 6;
    }
    image(compi, width/2, y,70,70);
    text("Score: "+puntuacion, 10, 30);
  
}
  
  else {
    imageMode(CENTER);
    image(welcomescreen, width/2,height/2);
    text("High Score: "+record, 50, 110);
   text("Spooky Bird",200,400);
}
}
void mousePressed() {
  vertical = -15;
  if(game==1) {
    wallx[0] = 600;
    wally[0] = y = height/2;
    wallx[1] = 900;
    wally[1] = 600;
    x = game = puntuacion = 0;

}
}
