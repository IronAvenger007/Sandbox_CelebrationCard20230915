//Global Variables
int appWidth, appHeight;
int brightnessNumber=128; //Range:1-255
int sizeFont, size;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xRectTest, yRectTest, widthRectTest, heightRectTest;
float xRect5, yRect5, widthRect5, heightRect5;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
PImage picBackground;
Boolean nightmode=false; //Note: clock will automatically turn on automatically
Boolean brightnessControl=false; //Note: ARROWS
String title = "DO NOT PRESS", footer = "DO NOT PRESS";
PFont titleFont, footerFont;
color purple=#2C08FF, resetDefaultInk=#FFFFFF, yellow = #E9FF00;
//String //All text variables as name=value pait
//
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(1080, 600);  
  appWidth = width;
  appHeight = height;
  //
  //Population
    int hourNightMode = hour (); //24-hour clock
  println(hourNightMode) ; 
  if (hourNightMode>17) {
    nightmode =true;
  } else if (hourNightMode<05) {
    nightmode=true;
  } else {
     nightmode=false;
  }
  backgroundImageX = appWidth*1/4;
  backgroundImageY = appHeight*1/4;
  backgroundImageWidth = appWidth*1/2;
  backgroundImageHeight = appHeight*1/2;
  picBackground = loadImage("../imagesUsed/UrMom.jpg");
    xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  xRectQuit = appWidth*1/4;
  yRectQuit = appHeight*1/4;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
  xRectTest = appWidth*1/8;
  yRectTest = appHeight*1/8;
  widthRectTest = appWidth*1/8;
  heightRectTest = appHeight*1/8;
  xRect5 = appWidth*6/8;
  yRect5 = appHeight*6/8;
  widthRect5 = appWidth*1/8;
  heightRect5 = appHeight*1/8;
    xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*2/10;
  xFooter = xTitle;
  yFooter = appHeight*8/10;
  widthFooter = widthTitle;
  heightFooter = heightTitle;
  //
  //DIVs
    rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xRectTest, yRectTest, widthRectTest, heightRectTest); //Image, foreground, near the top
  rect(xRect5, yRect5, widthRect5, heightRect5); //
  // Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);
  titleFont = createFont("Consolas-Bold-48", 55);
  footerFont = createFont("Consolas-Bold-48", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
} //End setup
//
void draw() {
  //background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  if ( brightnessControl==true )
  { //Gray Scale: 1/2 tint (i.e 128/256=1/2)
    if ( brightnessNumber<1 ) {
      brightnessNumber=1;
    } else if ( brightnessNumber>255 ) {
      brightnessNumber=255;
    } else {
      //Empty ELSE
    }
    tint (255, brightnessNumber);
    println(brightnessNumber);
  }
  

  if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    //tint ( 64, 64, 40 );
    //println(nightmode);
  } else {
    //noTint(); //See Processing DOC
    //println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  //Text is same size or relative to rect()
  //
  //Drawing Font Code
  //
  fill(purple); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60;
  textFont(titleFont, size);
  text ( title, xTitle, yTitle, widthTitle, heightTitle );
  fill(yellow); //ink
  textAlign(CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 60;
  textFont(footerFont, size);
  text ( footer, xFooter, yFooter, widthFooter, heightFooter );
  fill(resetDefaultInk); //ink
  //
  //rect(  ); //Title: 
  //rect(   ); //Footer: 
} //End draw
//
void keyPressed() {
    if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //Brightness keybind
    brightnessControl = true;
    if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber+1
    if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ; //brightnessNumber-=1
    //CONTINUE HERE with brightness toggles
  }
  //
  println(brightnessNumber);
} //End keyPressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
//End MAIN Program
