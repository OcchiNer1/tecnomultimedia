import ddf.minim.*;
Minim minim;
AudioPlayer player;
PFont fuente;
PImage RM;
void setup(){
size(800,800);
background(90);
fuente = createFont("CoertSchrift_Romaans.ttf",44);
textFont(fuente);
minim = new Minim(this);
player = minim.loadFile("Rick and Morty  Outro.mp3");
frameRate(20);
textAlign(CENTER);
RM = loadImage("2348073.jpg");
}
void draw(){
player.play();
fill(#40F2FE);
println(frameCount);
image(RM,0,0,height,width);
subtitulos("Tp 1 \n \n Tecno multimedia",30);
subtitulos("starring \n DAN HARMON \n BRANDON JOHNSON \n TOM KENNY \n MAURICE LAMARCHE",60);
subtitulos("Starring \n NOLAN NORTH \n GASSIE STEELE \n KARI WAHLGREN",80);
subtitulos("Executive Story Editor \n JANE BECKER \n JESSICA GAO \n Story editors \n SARAH CARBIENER \n ERICA ROSBE",100);
subtitulos("Main theme and Score by \n RYAN ELDER",120);
subtitulos("Casting Directors \n RUTH LAMBERT,CSA & \n ROBERT McGEE,CSA",140);
subtitulos("Art Director \n JEFFREY M.THOMPSON \n Color Supervisors \n JASON BOECH \n PHILIP VOSE",165);
subtitulos("Character Desing Lead \n MAXIMUS JULIUS PAUSON \n Background Design Lead \n CHRIS S. BOLDEN \n Prop Design Lead \n KYLE CAPPS",185);
subtitulos("Associate Producer \n SYDNEY RYAN \n Production Manager \n SCOUT RASKIN", 200);
subtitulos("Story Board Artists \n RUFINO ROY CAMACHO II \n ERICA HAYES \n KYOUMGHEE LIM \n Additional Storyboards \n HENRIQUE JARDIN \n DOUGLAS EINAR OLSEN",220);
subtitulos("Character Design \n KENDRA MELTON \n JUSTIN K.NOEL \n ELISA PHILIPS \n Background Design \n JOHN M. BERMAN \n VENGE CAINES \n ALEX J.LEE \n TOMMY SCOTT \n Prop Design \n BRENT NOLL \n ALLEN C. TAM",240);
subtitulos("Color Key \n COREY BOOTH \n REZA IMAN \n ERICA OMEGA \n BG Painters \n NICK BEAR \n DYLAN FORMAN \n JOSEPH HOLT \n JULES ITZKOFF \n BRIANNE NEUMANN",260);
subtitulos("Design Coordinators \n EMMA JANSSEN \n DAVE OTTERBY \n Color Coordinator \n ANTHONY ALFONSO \n Design Clean-up \n SABRINA MATI \n Design Assistant \n DAVID WEISER",280);
subtitulos("Digital Animation Services by \n BARDEL ENTERTAIMENT,INC. \n Additional Animation by \n XENTRIX STUDIOS",300);
subtitulos("Background Artist \n MANUEL BAILLARD \n JERRY BENNINGER \n KATHERINE COUPAL \n SERENA COTTIS \n IRINA GOLINA \n ALEXIS HIDLEBAUGH \n ALEX MEUNIER \n CANDICE PRINCE \n CAROLINA SALINO \n PETER SLAVIK \n EDA SOONG",320);
subtitulos("Producer for Williams Street \n OLLIE GREEN",340);
subtitulos("Executive Producers for Williams Street \n KEITH CROFFORD \n MIKE LAZZO",360);
}
void subtitulos(String texto1,int argumento1){
if (frameCount >= argumento1){
  background(0);
  textSize(40);
  text(texto1,400,250);
}
}
