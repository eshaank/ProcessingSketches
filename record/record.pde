import ddf.minim.*;
Minim minim;    
AudioPlayer song;
PImage pictureOfRecord;
int amountToRotate = 100;
void setup() {
//  size(500, 500);
      pictureOfRecord= loadImage("imgres.jpg");
      size(pictureOfRecord.width, pictureOfRecord.height);
      minim = new Minim(this);  
      song = minim.loadFile("thriftshop.mp3", 512);

  
  
  
  
  
}
void draw(){
//  rotateImage(pictureOfRecord, amountToRotate);
//    image(pictureOfRecord, 0, 0);

    if(mousePressed ){
     rotateImage(pictureOfRecord, amountToRotate);
     song.play();
       amountToRotate+=200;

  }

 else{
  song.pause();
 } 
 image(pictureOfRecord, 0, 0);
}
      
 

void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}

