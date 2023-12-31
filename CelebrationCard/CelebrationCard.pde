//Global Variables
int appWidth, appHeight, sizeFont, size;
String title = "Happy Halloween";
PFont titleFont;
PImage picBackground, pumpkinGhostPortrait;
color black=#000000, lightorange=#ff8818, resetDefaultInk=#FFFFFF, white=#FFFFFF, red=#e81123; //colour
float xBackgroundpic, yBackgroundpic, widthBackgroundpic, heightBackgroundpic;
float pumpkinGhostXrect, pumpkinGhostYrect, pumpkinGhostWidthRect, pumpkinGhostHeightRect, pumpkinGhostWidth, pumpkinGhostHeight;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xTitle, yTitle, widthTitle, heightTitle;
Boolean nightmode =false;
Boolean brightnessControl=false;
Boolean blueControl=false;
int brightnessNumber = 128;
int redNumber = 64, greenNumber =redNumber, blueNumber = 40;
//
void setup() {
  //Print & Println
  //println("Hello World");
  //println("Width:"+width, "\t", "Height:"+height);
  //println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  fullScreen();
  //size(1200, 800);
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
  //
  pumpkinGhostXrect =appWidth * 1/2; 
  pumpkinGhostYrect =appHeight * 1/2;
  pumpkinGhostWidthRect=appWidth * 1/7;
  pumpkinGhostHeightRect =appHeight * 1/4;
  //
  //concatenation of pathways
  String open = "/";
  String up = "..";
  String imagesPath = up + open;
  String imagesUsed = "imagesUsed/";
  String pumpkinGhostImage = "halloween1.png";
  String halloweenBackgroundImage = "halloween_pattern_background.jpg";
  picBackground = loadImage(imagesPath + imagesUsed + halloweenBackgroundImage);
  pumpkinGhostPortrait = loadImage (imagesPath + imagesUsed + pumpkinGhostImage);
  //
  xRectQuit = appWidth*0;
  yRectQuit = appHeight*0/10;
  widthRectQuit = appWidth*1/30;
  heightRectQuit = appHeight*1/24;
  //
  //aspect ratio
  pumpkinGhostWidth = 980.0;
  pumpkinGhostHeight = 980.0;
  float aspectRatio = 0.0;
  //
  //
  if (pumpkinGhostWidth >= pumpkinGhostHeight) { //PumpkinImage if Portrait
    println("PUMPKIN is Portrait");
    aspectRatio = pumpkinGhostHeight / pumpkinGhostWidth;
    pumpkinGhostWidth = pumpkinGhostWidthRect;
    pumpkinGhostHeight = aspectRatio * pumpkinGhostWidth;
    if (pumpkinGhostWidth > pumpkinGhostWidthRect) { //A ERROR Catch
      println("ERROR: Aspect Calcualtion Too Big");
      //
      //
      //
    }
  } else { //PumpkinImage if Landscape
    println("PUMPKIN is Landscape");
    aspectRatio = pumpkinGhostWidth / pumpkinGhostHeight;
    pumpkinGhostHeight = pumpkinGhostHeightRect;
    pumpkinGhostWidth = aspectRatio * pumpkinGhostHeight;
    if (pumpkinGhostWidth > pumpkinGhostWidthRect) { // A ERROR Catch
      println("ERROR: Aspect Calcualtion Too Big");
    }
  } //End IF
  //
  //
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
  //rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //rect(xBackgroundpic, yBackgroundpic, widthBackgroundpic, heightBackgroundpic);
  //rect(xTitle, yTitle, widthTitle, heightTitle);
  //rect(pumpkinGhostXrect, pumpkinGhostYrect, pumpkinGhostWidthRect, pumpkinGhostHeightRect);
  //rect(); //
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
  rect(xBackgroundpic, yBackgroundpic, widthBackgroundpic, heightBackgroundpic);
  if (brightnessControl==true ) tint(255, brightnessNumber);
  {
    if ( brightnessNumber<1  ) {
      brightnessNumber=1;
    } else if (brightnessNumber>255) {
      brightnessNumber=255;
    } else {
      //Empty Else
    }
    tint (255, brightnessNumber);
    println("Brightness: "+brightnessNumber);
  }
  //
  //
  if (nightmode==true) {
    tint(redNumber, greenNumber, blueNumber, brightnessNumber);
    println("Night Mode: "+nightmode);
  } else {
    tint (255, brightnessNumber);
    println("Night Mode: "+nightmode);
  }

  {
    if ( blueNumber<1  ) {
      blueNumber=1;
    } else if (blueNumber>40) {
      blueNumber=40;
    } else {
      //Empty Else
    }
    println("Blue: "+blueNumber);
  }
  image(picBackground, xBackgroundpic, yBackgroundpic, widthBackgroundpic, heightBackgroundpic);
  //
  fill(white); //ink //change white to RGB values to be able to be effected by nightmode?
  textAlign(CENTER, CENTER);
  size = 60;
  textFont(titleFont, size);
  text (title, xTitle, yTitle, widthTitle, heightTitle);
  //
  image(pumpkinGhostPortrait, pumpkinGhostXrect, pumpkinGhostYrect, pumpkinGhostWidth, pumpkinGhostHeight);
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
  //
  if (key == CODED && keyCode == UP || keyCode == DOWN ) {
    brightnessControl = true;
    if (key == CODED && keyCode == UP) brightnessNumber++;
    if (key == CODED && keyCode == DOWN) brightnessNumber-- ;
    //
    //println(brightnessNumber);
  }

  if (key == CODED && keyCode == LEFT || keyCode == RIGHT ) {
    blueControl = true;
    if (key == CODED && keyCode == LEFT) blueNumber-- ;
    if (key == CODED && keyCode == RIGHT) blueNumber++;
  }
} //End keyPressed
//
void mousePressed() {
  println("Mouse X: ", mouseX, "Mouse Y:", mouseY);
  //
  //xRectQuit, yRectQuit, widthRectQuit, heightRectQuit
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
//End MAIN Program
