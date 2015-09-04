int x = 1905;
int y = 200;
int xa = 500;
int ya = 500;
int xaa = 650;
int yaa = 950;
void setup(){
size(1920, 1080);  
  
  
  
  
  
  
  
}


void draw(){
  println(mouseX);
 println(mouseY);
PImage minecraft = loadImage("Creeper-Steve-Minecraft-Background-HD-Wallpaper.jpg");  
minecraft.resize(1920, 1080);  
  background(minecraft);  
 PImage creeper; 
 creeper=loadImage("url.jpg");
 creeper.resize(5, 5);
 image(creeper, x, y);
 
  PImage creepy; 
 creepy=loadImage("creepy.jpg");
 creepy.resize(5, 5);
 image(creepy, xaa, yaa);
 
 PImage creeps; 
 creeps =loadImage("creeps.jpg");
 creeps.resize(5, 5);
 image(creeper, xa, ya);
 if(isNear (mouseY,ya) && isNear (xa,mouseX)){
   ellipse(mouseX, mouseY, 50, 50);
   fill(0, 255, 0);
 }
 
  if(isNear (mouseY,yaa) && isNear (xaa,mouseX)){
   ellipse(mouseX, mouseY, 50, 50);
   fill(0, 255, 0);
 }

 
 if(isNear (mouseY,y) && isNear (x,mouseX)){
   ellipse(mouseX, mouseY, 50, 50);
   fill(0, 255, 0);
 }

}
boolean isNear(int a, int b) {
      if (abs(a - b) < 10){
          return true;
      }
     return false;
      
}
