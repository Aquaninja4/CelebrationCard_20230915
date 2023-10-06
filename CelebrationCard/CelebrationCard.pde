//Global Variables
int appWidth, appHeight, sizeFont, size;
String title = "Happy Halloween";
PFont titleFont;
PImage picBackground;
color black=#000000, lightorange=#ff8818, resetDefaultInk=#FFFFFF, white=#FFFFFF, red=#e81123; //colour
float xBackgroundpic, yBackgroundpic, widthBackgroundpic, heightBackgroundpic;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xTitle, yTitle, widthTitle, heightTitle;
Boolean nightmode =false;
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
   int hourNightMode = hour(); //24 hour clock
  println (hourNightMode);
  if (hourNightMode>22) {
    nightmode=true;
  } else if (hourNightMode<07) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  //
  //DIVs
  //
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //rect(xTitle, yTitle, widthTitle, heightTitle);
  //rect(); //
  //rect(); //
  //rect();
  //
  //(whatever)Font = createFont("Georgia", 55);
  titleFont = createFont("Onyx", 55);
  //[fontName] = createFont("[fontSpelling]",)
  //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Don't press "OK", known bug
  //
} //End setup
//
void draw() {
  //
  if (nightmode==true) {
    tint(64, 64, 40);
    println("Night Mode: "+nightmode);
  } else {
    noTint();
    println("Night Mode: "+nightmode);
  }
  image(picBackground, xBackgroundpic, yBackgroundpic, widthBackgroundpic, heightBackgroundpic);
  //
  fill(white); //ink
  textAlign(CENTER, CENTER);
  size = 60;
  textFont(titleFont, size);
  text (title, xTitle, yTitle, widthTitle, heightTitle);
  //
    rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //
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
