int BRICK_WIDTH = 30;
int BRICK_WIDTH2 = 30;
int BRICK_HEIGHT = 12;
int BRICK_HEIGHT2 = 12;
int BRICKS_IN_BASE = 50;
int w = 1;
int x = 1500;
int y = 1000;
int mid = (x - BRICKS_IN_BASE*BRICK_WIDTH) / 2 -30;
void setup(){
 size(1500, 1000); 
}
void draw(){

for(int j = 0; j < BRICKS_IN_BASE; j++){ //<>//
  for(int i = 0; i < BRICKS_IN_BASE; i++){
     rect( x + BRICK_WIDTH2 + mid, y - BRICK_HEIGHT , BRICK_WIDTH, BRICK_HEIGHT);
   x = (BRICK_WIDTH*i);
   
  }
}
  x=0;
 
   BRICKS_IN_BASE -= 1;
  y -= BRICK_HEIGHT2;
  BRICK_WIDTH2 += BRICK_WIDTH/2;
 

}
