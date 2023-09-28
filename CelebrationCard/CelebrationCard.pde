//Global Variables
int appWidth, appHeight;
String exitText = "X"; //All text variables as key:value pairs
PFont exitFont; //All fonts used
color black=#000000, lightorange=#ff8818, resetDefaultInk=#FFFFFF, red=#e81123; //colour
int  sizeFont, size; //Text Variables
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
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
  xRectQuit = appWidth-40;
  yRectQuit = appHeight*1/1000-1;
  widthRectQuit = appWidth*4/15;
  heightRectQuit = appHeight*1.5/15;
  //
  //DIVs
  fill(lightorange);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  fill(red);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //rect(); // happy halloween title/text
  //rect(); // Copy and Paste this for all rect()s
  //rect(); //
  //rect(); 
  exitFont = createFont("Georgia", 55);
  //[fontName] = createFont("[fontSpelling]",)
  //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
} //End setup
//
void draw() {
  //
  //Drawing Text, Copied for each line of text
  fill(resetDefaultInk); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60;
  textFont(exitFont, size); //states which font to use
  text (exitText, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  println("Mouse X: ", mouseX, "Mouse Y:", mouseY);
  //
  //xRect2Quit, yRect2Quit, widthRect2Quit, heightRect2Quit
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
//End MAIN Program
