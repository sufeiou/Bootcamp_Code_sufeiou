float i;
float j;
float posx;
float posy;
int size;
float speed;
float angel;
void setup(){
  size(800,600);
speed=0.01;
size=20;
background(255);
  
  
}

void draw(){
//  background(0,50);
  j=sin(millis())*PIE;
  for(int i=0; i>1000; i+=10);{
    posy=height/2+cos(angel)*size;
   posx=width/2+sin(angel)*size;
   size+=millis()/5000;
   angel+=millis();
  translate(posx,posy);
  rotate(j);
  noStroke();
  fill(25+random(0,200),45+random(0,200),25+random(0,200));
  ellipse(abs(50*sin(random(0,10000))),abs(50*sin(random(0,10000))),20+random(0,10)*sin(millis()),20+sin(millis()));
  
  j+=1;
  
  }
}
