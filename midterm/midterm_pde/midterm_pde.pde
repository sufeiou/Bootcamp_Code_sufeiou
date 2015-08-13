PImage[] walk0= new PImage[3];
PImage[] walk45=new PImage[3];
PImage[] walk135=new PImage[3];
PImage[] walk90=new PImage[3];
//PImage[] bear=new PImage[21];
PVector direction;
PVector posDirection;
PVector location;
PVector velocity;
float pos2x;
float pos2y;
float pos1x;
float pos1y;
int frameNum=0;
boolean move;
int countSec;
float dis;
int speed;
float pposX;
float pposY;
float vectorX;
float vectorY;
int count;

void setup(){
size(800,600);
pos1x=width/3*2;
pos1y=height/2;


for(int i=0; i<walk0.length;i++){
   walk0[i]=loadImage("0"+i+".png"); }
   
//   for(int i=0; i< walk45.length; i++){
//   walk45[i]=loadImage("45"+i+".png"); }
//   
//   for(int i=0; i< walk135.length; i++){
//   walk135[i]=loadImage("135"+i+".png"); }
//   
//   for(int i=0; i< walk90.length; i++){
//   walk90[i]=loadImage("90"+i+".png"); }
//   
   frameRate(6);
   vectorX=0;
   vectorY=-10;
//   speed=15;
   location=new PVector(pos1x,pos1y);
  velocity= new PVector(0,0);
  speed=8;
    posDirection=new PVector(vectorX,vectorY);
  direction=new PVector(pos2x-location.x,pos2y-location.y);
  
  
}

void draw(){
   imageMode(CENTER);
  
  location.add(velocity);

  background(255,70);
  frameNum+=1;  
//  if(location.x-pos2x==0){ 
//  frameNum %= walk90.length;
//  image(walk90[frameNum],location.x,location.y);
//  }
posDirection.x=location.x-pposX;
  posDirection.y=location.y-pposY;
  float a=PVector.angleBetween(direction,posDirection);
if (mousePressed){
    pos2x=mouseX;
    pos2y=mouseY;
    move=true;
     pushMatrix();
  translate(location.x,location.y);
  if(pos2x>=0){
  rotate(abs(a));}
  else{rotate(-abs(a));}
  
//  if(location.y-pos2y==0){   
  frameNum %= walk0.length;
  image(walk0[frameNum],0,0);
  count=frameNum;
  popMatrix();
  }
if (move==false){
  velocity.x=0;
  velocity.y=0;
   pushMatrix();
  translate(location.x,location.y);
  if(pos2x>=0){
  rotate(abs(a));}
  else{rotate(-abs(a));}
  image(walk0[1],0,0);
    popMatrix();
}else{
  
  pushMatrix();
  translate(location.x,location.y);
  if(pos2x>=0){
  rotate(abs(a));}
  else{rotate(-abs(a));}
  
//  if(location.y-pos2y==0){   
  frameNum %= walk0.length;
  image(walk0[frameNum],0,0);
  count=frameNum;
  popMatrix();
  }
//  if((location.x-pos2x>0 && location.y-pos2y<0)&&(location.x-pos2x<0 && location.y-pos2y>0)){ 
//  frameNum %= walk135.length;
//  image(walk135[frameNum],location.x,location.y);
//  }
//  if((location.x-pos2x>0 && location.y-pos2y<0)&&(location.x-pos2x<0 && location.y-pos2y<0)){ 
//  frameNum %= walk45.length;
//  image(walk45[frameNum],location.x,location.y);
//  }
   
 
  
  
  
  
//  translate(0,0);

//  pos1x=pos1x-speed;
  
  if (move){
    countSec++;
      if (countSec>=5){
//        if (pos1x!=pos2x){
//          if (pos1x>pos2x){pos1x=pos1x-abs((pos1x-pos2x)/(pos1y-pos2y));
//        println("a");} 
//        else{pos1x=pos1x+abs((pos1x-pos2x)/(pos1y-pos2y));println("b");}
//        }
//        if(pos1y!=pos2y){
//          if (pos1y>pos2y){pos1y=pos1y-1;} else{pos1y=pos1y+1;}   
//       }
      if(location.y==pos2y){velocity.x=(pos2x-location.x)*speed;
        velocity.y=0;}
      else{
        velocity.x=-((location.x-pos2x)/abs((location.y-pos2y))) *speed;
        if (location.y>pos2y){velocity.y=-speed;}
        else{velocity.y=speed;}}
        dis=dist(location.x,location.y,pos2x,pos2y);
       if(dis<20){
        move=false;
         velocity.x=0;
         velocity.y=0;
          pposX=pos2x;
          pposY=pos2y;
       }
      }
  }
  
}        
        
        
//        frameNum++;  
//        frameNum %= walk.length;
//        image(walk[frameNum],pos1x,pos1y);
//       }
    
          
// println(velocity.x,velocity.y);
//       println(countSec);
//       println(pos2x,pos2y);
               
       
 
       
        
      
  
//  for (int i=0;i<walk.length;i++){
//    
//   image(walk[i],pos1x,pos1y);
//   if(i== walk.length-1){
//     i=0;
//   }
//  }
  


//void mousePressed(){
//pos2x=mouseX;
//pos2y=mouseY;
//move=true;







