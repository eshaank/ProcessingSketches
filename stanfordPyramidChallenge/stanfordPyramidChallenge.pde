int BRICK_WIDTH = 30;
int BRICK_WIDTH2 = 30;
int BRICK_HEIGHT = 12;
int BRICK_HEIGHT2 = 12;
int BRICKS_IN_BASE = 14;
int x = 0 ;
int y = 500;
void setup(){
 size(600, 500); 
}
void draw(){

for(int j = 0; j < 15; j++){ //<>//
  for(int i = 0; i < BRICKS_IN_BASE; i++){
     rect( x + BRICK_WIDTH2 , y - BRICK_HEIGHT , BRICK_WIDTH, BRICK_HEIGHT);
   x = (BRICK_WIDTH*i);
   
  }
  x=0;
 
   BRICKS_IN_BASE -= 1;
  y -= BRICK_HEIGHT2;
  BRICK_WIDTH2 += BRICK_WIDTH/2;
  
}
}