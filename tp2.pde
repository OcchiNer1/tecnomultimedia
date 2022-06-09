//https://youtu.be/ae39LAY8ybA video explicativo
//Santiago Iriarte 85122/3
int cuad = 12;
int cant = height/2;
float rot= 0.01;
void setup(){
size(600,600);
frameRate(60);

}
void draw(){
background(255);

//println(mouseX);

for(int x=0;x<cuad;x++){
  for(int y=0;y<cuad;y++){
    noStroke();
    if((x+y)%2==0){
    fill(255);
    }else{
      fill(0);
    }
    rect(x*cant,y*cant,cant,cant);
}
}
blendMode (DIFFERENCE);
translate(height/2,width/2);
rotate(rot);
cubo();
 if(keyPressed == true){
 rot=0;
 }else{
 rot= rot+0.01;
 }

}

void cubo(){
translate(-300,-300);
strokeWeight(3);
beginShape(QUADS);
vertex(250,150);vertex(370,300);vertex(250,450);vertex(130,300);
vertex(250,150);vertex(370,150);vertex(500,300);vertex(370,300);
vertex(370,300);vertex(500,300);vertex(370,450);vertex(250,450);
endShape();
}
