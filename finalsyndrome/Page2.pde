void drawPage2(){
    image(img3,0,0); 
    
    o_2=o_2-3;
    fill(255,o_2);
    rect(0,0,1200,675);
  
    if( mouseX >= 1030 && mouseX <= 1139 && mouseY >= 607 && mouseY <= 632){
    fill(0,80);
    rect(1030,607,109,27);
 }    
 
    drawlines();
 

}
void drawlines(){
  if(mouseX >360 && mouseX <410 && mouseY>100 && mouseY<125&& mousePressed){
  finaltime = false;
}
if(mouseX >411 && mouseX <481 && mouseY>100 && mouseY<125&& mousePressed){
  finaltime = true;
}
  
  if(finaltime == true){
  num = 12;
  textFont(font1);
  textSize(18);
  fill(255,100);
  textAlign(LEFT);
  text("教学周", 360, 120);
  
  textFont(font1);
  textSize(18);
  fill(255);
  textAlign(LEFT);
  text(" / 考试周", 411, 120);
  
  textFont(font2);
  textSize(50);
  fill(255);
  textAlign(CENTER);
  text("1 2 1 4", 587, 65);
  
}
else{
  num = 8;
  
  
  textFont(font1);
  textSize(18);
  fill(180);
  textAlign(LEFT);
  text("教学周", 360, 120);
  
  textFont(font1);
  textSize(18);
  fill(180,100);
  textAlign(LEFT);
  text(" / 考试周", 411, 120);
  
   textFont(font2);
  textSize(50);
  fill(255);
  textAlign(CENTER);
  text("9 4 0", 587, 65);
  
}
  
  frameRate(2000);
  lines = new Line[num];
  for(int i = 0; i < lines.length; i++){
    //float tempcx =423;
    float tempcy = 200 + i*26;
    //float temptargetx = 855;
   lines[i] = new Line(tempcx, tempcy, temptargetx);
     if(tempcx < temptargetx-1 ){
        tempcx += (temptargetx-tempcx) * easing;
     }else{
        tempcx = 395;
           }
  }
  
   for(int i = 0; i < lines.length; i++){
  lines[i].display();
  }
}
  

 class Line{
   float cX;
   float cY;
   float targetX;
   
   Line(float cx, float cy, float targetx){
     cX = cx;
     cY = cy;
     targetX = targetx;
   }
void display(){
  stroke(255,130);
  strokeWeight(5);
  line(395,cY,802,cY);
  fill(255);
  noStroke();
  ellipse(cX, cY, 10,10);
  fill(255);
  ellipse(395,cY,10,10);
  ellipse(802,cY,10,10);

}
 }
void judgePage2(){
  
  if(mouseX >= 1030 && mouseX <= 1139 && mouseY >= 607 && mouseY <= 632){
    
    if(mousePressed){
      b = 3;
    }
      
  }
  

}