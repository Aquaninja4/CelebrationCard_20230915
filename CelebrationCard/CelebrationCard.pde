//Global Variables
int appWidth, appHeight, sizeFont, size;
String exitText = "X", title = "Happy Halloween";
PFont exitFont, titleFont;
PImage picBackground;
color black=#000000, lightorange=#ff8818, resetDefaultInk=#FFFFFF, red=#e81123; //colour
float xBackgroundpic, yBackgroundpic, widthBackgroundpic, heightBackgroundpic;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xTitle, yTitle, widthTitle, heightTitle;
Boolean nightmode=false;
//
void setup() {
  //Print & Println
  //println("Hello World");
  //println("Width:"+width, "\t", "Height:"+height);
  //println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(600, 400);
  appWidth = width;
  appHeight = height;
  //
  //Population
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*2/10;
  //
  xBackgroundpic = appWidth*0;
  yBackgroundpic = appHeight*0;
  widthBackgroundpic = appWidth;
  heightBackgroundpic = appHeight;
  picBackground = loadImage("../ImagesUsed/halloween_pattern_background.jpg");
  //
  xRectQuit = appWidth-40;
  yRectQuit = appHeight*1/1000-1;
  widthRectQuit = appWidth*4/15;
  heightRectQuit = appHeight*1.5/15;
  //
  //DIVs
  image(picBackground, xBackgroundpic, yBackgroundpic, widthBackgroundpic, heightBackgroundpic);
  //
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xTitle, yTitle, widthTitle, heightTitle);
  //rect(); //
  //rect(); //
  //rect();
  exitFont = createFont("Georgia", 55);
  titleFont = createFont("Onyx", 55);
  //[fontName] = createFont("[fontSpelling]",)
  //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Don't press "OK", known bug
} //End setup
//
void draw() {
  //
  fill(red); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60;
  textFont(exitFont, size);
  text (exitText, xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
  fill(black); //ink
  textAlign(CENTER, CENTER);
  size = 60;
  textFont(titleFont, size);
  text (title, xTitle, yTitle, widthTitle, heightTitle);
  //
  if (nightmode==true) {
    tint(64, 64, 40);
    println("Night Mode: "+nightmode);
  } else {
    noTint();
    println("Night Mode: "+nightmode);
  }
} //End draw
//
void keyPressed() {
  if (key == 'n' || key=='N' ) {
    if (nightmode==true) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
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
