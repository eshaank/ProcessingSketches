void setup()
{
 size (1000, 1000); 
  
  
  
}
void draw()
{
  
  for(int i = 1; i < 501; i+=10){
    noFill();
 ellipse(250, 500, i, i); 
  } 
   for(int i = 1; i < 501; i+=10){
    noFill();
 ellipse(750, 500, i, i); 
  }
  
}
