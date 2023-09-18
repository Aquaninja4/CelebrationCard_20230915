//Global Variables
int appWidth, appHeight;
float xRect, yRect, widthRect, heightRect;
//
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(600, 400);
  appWidth = width;
  appHeight = height;
  //
  //Population
  xRect = appWidth*0;
  yRect = appHeight*0;
  widthRect = appWidth-1;
  heightRect = appHeight-1;
} //End setup
//
void draw() {
  rect(xRect, yRect, widthRect, heightRect);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
