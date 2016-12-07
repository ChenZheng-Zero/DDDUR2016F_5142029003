


void drawPage4(){
  frameRate(60);
  image(img5,980,105);
  image(img4,0,0);
  
  if( mouseX >= 1030 && mouseX <= 1139 && mouseY >= 607 && mouseY <= 632){
  fill(0,80);
  rect(1030,607,112,29);
  }
  
  numdisplay();  
  beatdisplay();
  
  o_4=o_4-3;
  fill(255,o_4);
  rect(0,0,1200,675);
}
void numdisplay(){
  if(normalnum < 971){
    normalnum= normalnum+9;
  }else{
    normalnum = 978;
  }
  
   if(finalnum < 1081){
    finalnum= finalnum+9;
  }else{
    finalnum = 1086;
    
  }
  
}
void beatdisplay(){
 
  if(countm % 90 == 0) {
    growb = 2;
    textFont(font2);
    textSize(60);
    fill(255);
    textAlign(LEFT);
    text(normalnum, 479, 323);
  }
  else{
    textFont(font2);
    textSize(60);
    fill(255,255-(countn %90)*1.6);
    textAlign(LEFT);
    text(normalnum, 479, 323);
   
  }
  if(countn % 60 == 0) {
    growc = 15;
    textFont(font2);
    textSize(75);
    fill(255);
    textAlign(RIGHT);
    text(finalnum, 880, 455);
  }
  else{
    textFont(font2);
    textSize(75);
    fill(255,255-(countn %60)*1.2);
    textAlign(RIGHT);
    text(finalnum, 880, 455);

  }
  if(bsize > 60) {
    bsize = 60;
    growb = -0.5;
  }
  if(bsize < 25) {
    bsize = 25;
    growb = 0;
  }
   if(csize > 135) {
    csize = 135;
    growc = -4;
  }
  if(csize < 45) {
    csize = 45;
    growc = 0;
  }
  noStroke();
  fill(255,195+bsize);
  ellipse(350, 185, bsize, bsize);
  fill(255,135+csize);
  ellipse(1020, 255, csize, csize);

  
  bsize = bsize + growb;
  csize = csize + growc;

  countn = countn + 1;
  countm = countm + 1;

}


void judgePage4(){
  if(mouseX >= 1030 && mouseX <= 1139 && mouseY >= 607 && mouseY <= 632){
    if(mousePressed){
      b = 5;
    }
   }
  
}