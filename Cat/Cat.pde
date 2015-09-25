import ddf.minim.*;        
AudioSample sound;

int x = 330;
int y = 450;
int xx = 655;
int yy = 450;
int acceleration = 5;
void setup()
{
size(1000, 1000);  
  PImage catPic = loadImage ("cat.jpg"); 
 catPic.resize(1000, 1000);
  background(catPic);
}

void draw()
{ 
  ellipse(x, y, 150, 150);
  fill(200, 0, 0);
  
  ellipse(xx, yy, 150, 150);
  fill(200, 0, 0);
Minim minim = new Minim(this);        
sound = minim.loadSample("lasergun.wav");


 
}
void keyPressed() {
   x+=5*acceleration;
  y+=5*acceleration; 
  
   xx+=5*acceleration;
  yy+=5*acceleration;
 sound.trigger(); 
  }
