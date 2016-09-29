PImage road;
PImage frog;
int speed = (int)random(10)-7;
int speed2 = (int)random(10)-2;
int speed3 = (int)random(20)-17;
int speed4 = (int)random(10)-2;
int frogX = 160;
int frogY = 335;
Car car1 = new Car(speed, 160, 315);
Car car2 = new Car(speed2, 40, 295);
Car car3 = new Car(speed3, 0, 275);
Car car4 = new Car(speed4, 380, 255);
Car car5 = new Car(speed3, 100, 235);
Car car6 = new Car(speed, 0, 215);
Car car7 = new Car(speed4, 220, 195);
void setup(){
 size(400, 400);
road = loadImage("frogger.png");
 road.resize(400, 400); 
frog = loadImage("frog.png");
 frog.resize(23, 23);
  
  
}
void draw(){
 
  bounce();
  background(road);
 image(frog, frogX, frogY);
 println(frogX, frogY);
car1.display();
car2.display();
car3.display();
car4.display();
car5.display();
car6.display();
car7.display();
car1.speed();
car2.speed();
car3.speed();
car4.speed();
car5.speed();
car6.speed();
car7.speed();
if(intersects(car1) || intersects(car2) || intersects(car3) || intersects(car4) || intersects(car5) || intersects(car6) || intersects(car7)){
frogX = 160;
frogY = 335;

}  
  
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
static int blue = 255;
class Car{

int size = 100;
int speed;
int x;
int y;
int r;
int g;
int b;
Car(int speed, int x, int y){
 this.speed = speed;
 this.x = x;
 this.y = y;  
 r = (int)random(200);
 g = (int)random(10);
 b = sketch__Frogger_.blue;
 sketch__Frogger_.blue -= 70;
}
    void display() 
  {
    fill(r,g,b);
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
  boolean intersects(Car car) {
if ((frogY > car.getY()-20 && frogY < car.getY()+20) && (frogX > car.getX()-20 && frogX < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}
