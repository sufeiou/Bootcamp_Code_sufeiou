PVector velocity;
PVector position;

PVector f;
float k;
int a;
int b;

void setup(){
  size(800,600);
  k=0.2;
  velocity = new PVector (0,0);
  position=new PVector(width/2,400);

  f=new PVector(0,0);
}

void draw(){
 background(0);
 update();

//crashY
if(position.y+25>=height){
  
  velocity.y=velocity.y*-1;
}
  if(position.y-25<=0){
  
  velocity.y=velocity.y*-1;
}
ellipse(position.x,position.y-25,50,50);
//crashX
if(position.x-25<=0||position.x+25>=width){
   velocity.x=velocity.x*-1;
 }println(velocity.x,velocity.y);
//velocity.y=velocity.y-2;
}

//motivate
void mousePressed(){
  a=mouseX;b=mouseY;
 velocity.y=(position.y-b)/10;
 velocity.x=(position.x-a)/10;
if (mouseX<width/2){
velocity.x+=3;} else{velocity.x+=-3;}
}

  void update() {
    
    f = new PVector(-velocity.x,-velocity.y);
    f.normalize();
    f.mult(.2);
    int(velocity.x);
    int(velocity.y);
    if (velocity.x>8||velocity.y>8){
    velocity.add(f);
    }
    if (velocity.x<=8|| velocity.y<=8){
      velocity.mult(.99);
    }
    position.add(velocity);
  }

