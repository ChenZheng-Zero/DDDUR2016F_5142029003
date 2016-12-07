void drawPage5(){
  image(img6,0,0);
  if( mouseX >= 58 && mouseX <= 302 && mouseY >= 611 && mouseY <= 636){
    fill(255,80);
    rect(58,611,244,25);
 }
  
  o_5=o_5-5;
  fill(0,o_5);
  rect(0,0,1200,675);
  
}

void judgePage5(){
if( mouseX >= 58 && mouseX <= 302 && mouseY >= 611 && mouseY <= 636){
   
    if(mousePressed){
      b = 1;
      o_1=100;
      o_2=255;
      o_3=255;
      o_4=255;
      o_5=255;
delay(100);
    }
   }
}