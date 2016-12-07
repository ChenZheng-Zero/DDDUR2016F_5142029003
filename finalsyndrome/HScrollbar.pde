class HScrollbar {
  int swidth, sheight;    // width and height of bar
  float xpos, ypos;       // x and y position of bar
  float spos, newspos;    // x position of slider
  float sposMin, sposMax; // max and min values of slider
 float loose;              // how loose/heavy
  boolean over;           // is the mouse over the slider?
  boolean locked;
  float ratio;

  HScrollbar (float xp, float yp, int sw, int sh, float l) {
    swidth = sw;
    sheight = sh;
    int widthtoheight = sw - sh;
    ratio = (float)sw / (float)widthtoheight;
    xpos = xp;
    ypos = yp-sheight/2;
   // spos = xpos + swidth/2 - sheight/2;
   spos = xpos +373 ;//sliderstartingposition
    newspos = spos;
    sposMin = xpos+1;
    //sposMax = xpos + swidth - sheight;
   sposMax = xpos + swidth-7;
    loose = l;
  }

  void update() {
    if (overEvent()) {
      over = true;
    } else {
      over = false;
    }
    if (mousePressed && over) {
      locked = true;
    }
    if (!mousePressed) {
      locked = false;
    }
    if (locked) {
     // newspos = constrain(mouseX-sheight/2, sposMin, sposMax);
       newspos = constrain(mouseX, sposMin, sposMax);
 }
    if (abs(newspos - spos) > 1) {
      spos = spos + (newspos-spos)/loose;
    }
  }

  float constrain(float val, float minv, float maxv) {
    return min(max(val, minv), maxv);
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth &&
       mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    fill(255,0);
    rect(xpos, ypos, swidth, sheight);
    if (over || locked) {
      fill(0,80);
    } else {
      fill(0,200);
    }
    rect(spos, ypos-2, 14, sheight+3);
  }

  float getPos() {
    // Convert spos to be values between
    // 0 and the total width of the scrollbar
   // return spos * ratio;
       return spos *1;

  }


  void displayMonth(){
    for(int i = 0; i < 14; i ++){
      if(getPos() > 60 + 33 * i && getPos() < 60 + 33* (i+1)){
        fill(0);
        textFont(font1);
        textSize(21);
        textAlign(RIGHT);
        if(i<7){
        text("12."+(i+15),665,429);
        }
        if(i>=7&&i<12){
        text("01."+"0"+(i-2),665,429);
        }
        if(i>=12){
        text("01."+(i-2),665,429);
        }
        date = i ;
         
              
      }
    }
  }
  
}