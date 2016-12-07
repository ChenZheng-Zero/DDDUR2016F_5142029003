
Line[] lines;

HScrollbar hs1;
PImage img1, img2, img3, img4, img5, img6;
PFont font1, font2;
int a = 0;   
int b = 1;    //control the switch between pages

float xspacing = 7.02;   // How far apart should each horizontal location be spaced
float w=1500;              // Width of entire wave
float delta = 0.0;  // Start angle at 0
float amplitude = 155.0;  // Height of wave
float period = 34.0;  // How many pixels before the wave repeats
float dx= (TWO_PI / period) * xspacing;  // Value for incrementing X, a function of period and xspacing
float[] yvalues= new float[int(w/xspacing)];  // Using an array to store height values for the wave

int date = 0;//information of scrollbar

int[] salesamount = {10893597,10551597,11226938,10749703,9192204,7878602,7733944,9946613,9828732,10052335,9329318,7952362,6456838,7276269};

float x, y;
int number_of_points = 1;
boolean rotate ;
float circle_diameter = 10;
float plot_radius = 300;
float angle_incr = radians(0);
int pointstandard;
float o_1 = 255;

float easing = 0.005;
float tempcx =432;
float temptargetx = 802;
boolean finaltime = true;
 int num=8;
int numberofclick = 0;
float clicknumber ;
float o_2 = 255;


String[] spots;
int[] totalCheckouts;
float theta;
float radius;
float m, n;//spots position
float centerX, centerY;//center location
boolean showfinal = true;
float o_3 = 255;


float bsize = 25;
float csize = 45;
float growb = 0;
float growc = 0;
int countm = 0;
int countn = 0;
int normalnum = 0;
int finalnum = 0;
float o_4 = 255;

int o_5 =255;

 

  
void setup(){ 
  size(1200,675);
  lines = new Line[num];
  for(int i = 0; i < lines.length; i++){
    float tempcx =395;
    float tempcy = 200 + i*30;
    float temptargetx = 802;
    lines[i] = new Line(tempcx, tempcy, temptargetx);
  }
  
  img1 = loadImage("welcome1.jpg");
  img2 = loadImage("EATINGLESS.jpg");
  img3 = loadImage("printer.jpg");
  img4 = loadImage("exercise.jpg");
  img5 = loadImage("flavour.jpg");
  img6 = loadImage("end1.jpg");

//  badge = loadImage("badge.png");
//  reader = loadTable("reader.csv","header");
//  account = loadStrings("account.txt");
//  coffeeTrade = loadTable("coffee_trade.csv","header");
  
  
  font1 = createFont("SourceHanSansCN-Medium",20);
  font2 = createFont("Homestead-Display",30);

  
  hs1 = new HScrollbar(60,452,453,104,0.95);
  
}

void draw(){
  if (a == 0 ){
    welcome();  //welcome page
  }
  else {
    judge();  //judge b and decide which page to go
  }
  

}

void welcome(){
  background(img1);
 
  if(mouseX >= 906 && mouseX <= 1139 && mouseY >= 612 && mouseY <= 639){
   
    fill(0,80);
    rect(906,612,233,27);
    
    if (mousePressed){
      a = 1;
    }
  }
   calcWave();
  renderWave();
}

void calcWave() {
  // Increment theta (try different values for 'angular velocity' here
  delta += 0.013;

  // For every x value, calculate a y value with sine function
  float x = delta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

void renderWave() {
  noStroke();
  fill(255, 255, 255, 111);
  // A simple way to draw the wave with an ellipse at each location
  for (int x = 0; x < yvalues.length; x++) {
      ellipse(x*xspacing, 130+yvalues[x], 12, 12);

    if (x<height/4+yvalues[x]) {
      fill(255, 255, 255, 111);
    } else {
      fill(255, 255, 255, 255);
    }
  }
}

void judge(){
  
  if(b == 1){
      page1();
  }
  else if(b == 2){  
      page2();
  }
  else if(b == 3){  
      page3();
  }
  else if(b == 4){
      page4();
  }
  else if(b == 5){
      page5();
  }
}

void page1(){
  drawPage1();
  judgePage1();
}

void page2(){
  drawPage2();
  judgePage2();  
}

void page3(){
  drawPage3();
  judgePage3();  
}

void page4(){
  drawPage4();
  judgePage4();  
}

void page5(){
  drawPage5();
  judgePage5();  
}