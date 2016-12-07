
void drawPage3(){
  image(img5,0,0);
  
  if( mouseX >= 58 && mouseX <= 168 && mouseY >= 611 && mouseY <= 636){
    fill(255,80);
    rect(58,611,110,25);
 }
 
  drawspots();
  
  o_3=o_3-5;
  fill(0,o_3);
  rect(0,0,1200,675);
  
  
}
void drawspots(){ 
  spots = new String[10];
  totalCheckouts = new int[10];
  
  centerX = width/2+300;
  centerY = height/2+50;
  
  String[] savedData;
  
  if (mouseX >= 337 && mouseX <= 356 && mouseY >= 464 && mouseY <= 483 && mousePressed){
    showfinal = false;
  }
  if (mouseX >= 337 && mouseX <= 356 && mouseY >= 510 && mouseY <= 528 && mousePressed){
    showfinal = true;
  }
  
  
  if (showfinal == false){
  savedData = loadStrings("normalweekflavour.txt");
  fill(0);
  ellipse(346.5,472,7,7);
  fill(255);
  ellipse(346.5,516.5,7,7);

  
  } else {
  savedData = loadStrings("finalweekflavour.txt");
  fill(255);
  ellipse(346.5,474,7,7);
  fill(0);
  ellipse(346.5,516.5,7,7);
  }
 
  for (int i=1; i < savedData.length; i++) {

    String temp[] = split(savedData[i], ",");
    spots[i-1] = temp[0];
    totalCheckouts[i-1] = Integer.parseInt(temp[1]);
  }
  
  radius = 15;
  theta = radians(map(mouseX, 400, width, -220, 220));

  float r = 0;

  for (int i=0; i < 10; i++) {
    int idx = totalCheckouts.length-1; 

    r = map(sqrt(totalCheckouts[idx - i]), sqrt(totalCheckouts[idx]), sqrt(totalCheckouts[0]), 25, 170); 
    m = centerX - cos(theta) * radius;
    n = centerY + sin(theta) * radius;

    fill(0, 0, 0);
    noStroke();
    ellipse(m, n, r, r);
    
    // draw  title
    fill(200-17*i);
    textFont(font1);
    textSize(12);
    textAlign(RIGHT, CENTER);    
    text(spots[idx - i], m - (r/2) - 10, n-r/6);
    
    // draw total numbers
    fill(255);
    textFont(font1);
    textAlign(CENTER, CENTER);  
    textSize(1.2*i+8);
    text(nfc(totalCheckouts[idx- i]), m, n,0);

    theta += 0.78;
    radius += 33;
  }
 


}

  
  
void judgePage3(){
  if( mouseX >= 58 && mouseX <= 168 && mouseY >= 611 && mouseY <= 636){
   

    if(mousePressed){
      b = 4;
    }
  }
 
}