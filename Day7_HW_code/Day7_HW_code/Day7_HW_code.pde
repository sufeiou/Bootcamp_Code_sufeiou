PImage[] walk0= new PImage[3];
int row[];
int frameNum=0;
int countSec;
float posx;
float posy;
int rowline;
int count;

void setup(){
size(800,600);
for(int i=0; i<walk0.length;i++){
   walk0[i]=loadImage("0"+i+".png"); }
   frameRate(6);
   
for(int i=0; i>=600;i=i+60){
   row[i]=i;}  }
void draw(){
    background(255,70);
   posx++;
  frameNum+=1;  
  frameNum=frameNum % walk0.length;
   image(walk0[frameNum],posx,posy);
 
 
 }
   
//if (mousePressed){
//   posx=mouseX; 
//   posy=height;
//  frameNum %= walk0.length;
//  for(int i=0; i>600;i++){
//    posy--;

//}

  
  
  

  


 
  
  
  
  

   
              
        

       
 
       
        
      
  




