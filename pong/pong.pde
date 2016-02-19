 import ddf.minim.*;   
 int x = 250; 
 int speed = 4;
 int y = 250;
 int speed2 = 5;
 Minim minim;
 AudioSample sound;
 PImage backgroundImage;
void setup()
{
size(500, 500);  
minim = new Minim (this);  
  sound = minim.loadSample("73750__timbre__remix-of-benboncan-sad-trombone-more-wah-bright-de-clicked.wav", 128);
  backgroundImage = loadImage("images.jpg");
  backgroundImage.resize(500, 500);
}

void draw()
{
image(backgroundImage, 0, 0);
  ellipse(x, y, 25, 25);
  fill(77, 0, 153);
  stroke(0, 0, 0);
  x+=speed;
  y+=speed2;
  if(x>=500){
   speed=-speed;
  }
  if(x<=0){
    speed=-speed;
  }
  
if(y>=500){ 
  boolean onPadle = intersects( x, y, mouseX, 485, 100);
  if (onPadle){
  
  } 
}
  if(y<=0){
    speed2=-speed2; 
  } 
rect(mouseX, 485, 100, 75);

}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY - paddleLength && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

