
void drawPage1(){
 
  image(img2,0,0);
 
  
  hs1.update();
  hs1.display();
  hs1.displayMonth();
  
  o_1=o_1-3;
  fill(0,o_1);
  rect(0,0,1200,675);
  
  if( mouseX >= 58 && mouseX <= 168 && mouseY >= 611 && mouseY <= 636){
    fill(255,80);
    rect(58,611,110,25);
 }
  
  
  drawBar(salesamount,date);
  spiralDisplay();
  
 
   
}


void spiralDisplay(){
  pointstandard =int( map( salesamount[date],6456838,11226938,1,500));
  translate(1000, 430);//position of spiralpoints

  
  rotate(radians(number_of_points));
  angle_incr =radians(25);
  
  if(number_of_points > pointstandard) {
  number_of_points--;
  rotate = false;
}
  if(number_of_points == pointstandard) { 
  number_of_points=pointstandard;
  rotate = true;
}
  if(number_of_points < pointstandard) {
  number_of_points++; 
  rotate = false;
}
 
  if(rotate == false){  
  for(int i=0; i<number_of_points; i++){  
    
    float ratio = i/(float)number_of_points;
    float spiral_rad = ratio * plot_radius;
    float angle = i*angle_incr;
    x = cos(angle) * spiral_rad;
    y = sin(angle) * spiral_rad;
     
    fill(0,120);
    noStroke();
    ellipse(x,y,circle_diameter,circle_diameter);
  
  }
}

  if(rotate == true){
  for(int i=0;i<number_of_points; i++){ 
    float ratio = i/(float)number_of_points;
    float spiral_rad = ratio * plot_radius;
    float angle = i*angle_incr;
    x = cos(angle) * spiral_rad ;
    y = sin(angle) * spiral_rad;
     
    fill(0);
    noStroke();
    ellipse(x,y,circle_diameter,circle_diameter);
    
    
   }

  
}
}

  
void judgePage1(){
  if(mouseX >= 58 && mouseX <= 168 && mouseY >= 611 && mouseY <= 636){

    if(mousePressed){
      b = 2;
    }
  }
}
 
void drawBar(int[] salesamount,int date){
  textFont(font2);
  textSize(32);
  fill(0);
  textAlign(RIGHT);
  text(int(salesamount[date]/100) +"RMB",665,504);
}