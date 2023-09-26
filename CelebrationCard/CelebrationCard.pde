//Global Variables
int appWidth, appHeight, sizeFont, size;
String exitText = "X";
  PFont exitFont;
  color black=#000000, lightorange=#F75F1C, resetDefaultInk=#FFFFFF, red=#e81123;
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
  xRect2Quit = appWidth-40;
  yRect2Quit = 0.01;
  widthRect2Quit = appWidth*4/15;
  heightRect2Quit = appHeight*1.5/15;
  //
   exitFont = createFont("Arial", 55);
} //End setup
//
void draw() {
  fill(black);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  //
  fill(red);
  rect(xRect2Quit, yRect2Quit, widthRect2Quit, heightRect2Quit);
  //
   fill(resetDefaultInk); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
    size = 15;
  textFont(exitFont, size);
  text (exitText, xRect2Quit, yRect2Quit, widthRect2Quit, heightRect2Quit);
  fill(resetDefaultInk); //ink
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
