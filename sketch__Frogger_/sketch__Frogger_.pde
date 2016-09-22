PImage road;
PImage frog;
int frogX = 160;
int frogY = 335;
Car car1 = new Car(3, 160, 315);
Car car2 = new Car(-2, 40, 295);
void setup(){
 size(400, 400);
road = loadImage("frogger.png");
 road.resize(400, 400); 
frog = loadImage("frog.png");
 frog.resize(25, 25);
  
  
}
void draw(){
 
  bounce();
  background(road);
 image(frog, frogX, frogY);
 println(frogX, frogY);
car1.display();
car2.display();
car1.speed();
car2.speed();
  
  
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
       frogY-=20;
      }
      else if(keyCode == DOWN)
      {
       frogY+=20;
      }
      else if(keyCode == RIGHT)
      {
       frogX+=20;
      }
      else if(keyCode == LEFT)
      {
       frogX-=20;
      }
   }
}
void bounce(){
  if(frogX >= width){
   frogX=380; 
  }
  if(frogX <= 0){
   frogX=0; 
  }
  if(frogY >= height){
   frogY=380; 
  }
   if(frogY <= 0){
   frogY=0; 
  }
}
class Car{

int size = 100;
int speed;
int x;
int y;
Car(int speed, int x, int y){
 this.speed = speed;
 this.x = x;
 this.y = y;  
}
    void display() 
  {
    fill(0,255,0);
    rect(x , y,  size, 19);
  }
    void speed(){
    x-=speed; 
    if(x<=0-size){
     x=width; 
    }
    if(x>width){
      x=0-size;
    }
    }
   int getX(){
    
    return x;
   }
  int getY(){
   
  return y; 
  }
 int getSize(){
  
   return size;
 } 
}
