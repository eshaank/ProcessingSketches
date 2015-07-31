void setup()
{
 size(500, 500);
  
  
}


void draw()
{
  for(int i = 0; i < 500; i = i+10){
 
if(i%20==0){
fill(255, 255, 0);}
  else {fill(0, 0, 0);}
  ellipse(i, i, 50, 50); 
}
}

