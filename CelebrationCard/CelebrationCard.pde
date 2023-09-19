//Global Variables
int appWidth, appHeight;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRect2Quit, yRect2Quit, widthRect2Quit, heightRect2Quit;
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
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  xRect2Quit = appWidth*1/4;
  yRect2Quit = appHeight*1/4;
  widthRect2Quit = appWidth*1/2;
  heightRect2Quit = appHeight*1/2;
} //End setup
//
void draw() {
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRect2Quit, yRect2Quit, widthRect2Quit, heightRect2Quit);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  println("Mouse X: ", mouseX, "Mouse Y:", mouseY);
  //
  //xRect2Quit, yRect2Quit, widthRect2Quit, heightRect2Quit
  if ( mouseX>xRect2Quit && mouseX<xRect2Quit+widthRect2Quit && mouseY>yRect2Quit && mouseY<yRect2Quit+heightRect2Quit ) exit();
  //
} //End mousePressed
//
//End MAIN Program
