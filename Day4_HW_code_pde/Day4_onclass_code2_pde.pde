PImage ima;
PImage carrot;
PImage grass;
int r,g,b;
float radius;
float x,y,x1,y1;
float speed;
float size;
boolean wave;
boolean circle;

void setup(){
size(800,700);
x=width/2;
y=height/2;
x1=200;
y1=240;
radius=20;
speed=0.06;
size=width/2;
circle=false;
wave=false;
ima=loadImage("Pikachu.png");
carrot=loadImage("carrot.png");
grass=loadImage("grass.jpg");


}
void draw(){
//  fill(20,224,232,90);
//  rect(0,0,1000,1000);
  grass.resize(0,700);
  image(grass,0,0);
  
  ima.resize(0,200);
  x=800-(width/2+cos(0.5+frameCount*speed)*size/2);
  y=height/2+sin(frameCount*speed)*size/2;
  image(ima,x,y);
  carrot.resize(0,100);
  x1=200+cos(0.5-frameCount*speed*0.6)*size/2;
  y1=240+sin(frameCount*speed)*size/2;
  image(carrot,x1,y1);
  
}
  
