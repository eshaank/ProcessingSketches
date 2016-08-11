int burdX = 30;
int burdY = 10;
int birdVelocity = 1;
int gravity = 1;
int pipePos = 490;
int random = (int) random(400, 600);
int rectHeight = 500;
void setup(){
 size(600, 600); 
  
  
  
}
void draw(){

background(0, 0, 204);
fill(0, 255, 10);
rect(pipePos--, random, 100, 1000);
fill(187, 0, 170);
ellipse(burdX, burdY+=birdVelocity, 25, 25);
birdVelocity+=gravity;
if(pipePos == -1){
pipePos = 490;
random = (int) random(100, 400);
}
if(intersects(burdX, burdY, pipePos, random, 100)){
  println("game over");
}

}
void mousePressed(){
  birdVelocity=-10;
 
  
  
}

boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}

