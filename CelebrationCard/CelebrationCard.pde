//Global Variables
int appWidth, appHeight;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xRectTest, yRectTest, widthRectTest, heightRectTest;
float xRect1, yRect1, widthRect1, heightRect1;
float xRect2, yRect2, widthRect2, heightRect2;
float xRect3, yRect3, widthRect3, heightRect3;
float xRect4, yRect4, widthRect4, heightRect4;
float xRect5, yRect5, widthRect5, heightRect5;
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
  xRect1 = appWidth*2/8;
  yRect1 = appHeight*2/8;
  widthRect1 = appWidth*1/8;
  heightRect1 = appHeight*1/8;
  xRect2 = appWidth*3/8;
  yRect2 = appHeight*3/8;
  widthRect2 = appWidth*1/8;
  heightRect2 = appHeight*1/8;  
  xRect3 = appWidth*4/8;
  yRect3 = appHeight*4/8; 
  widthRect3 = appWidth*1/8;
  heightRect3 = appHeight*1/8;  
  xRect4 = appWidth*5/8;
  yRect4 = appHeight*5/8;
  widthRect4  = appWidth*1/8;
  heightRect4 = appHeight*1/8;
  xRect5 = appWidth*6/8;
  yRect5 = appHeight*6/8;
  widthRect5 = appWidth*1/8;
  heightRect5 = appHeight*1/8;
  
  //
  //DIVs
    rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xRectTest, yRectTest, widthRectTest, heightRectTest); //Image, foreground, near the top
  rect(xRect1, yRect1, widthRect1, heightRect1);
  rect(xRect2, yRect2, widthRect2, heightRect2);
  rect(xRect3, yRect3, widthRect3, heightRect3);
  rect(xRect4, yRect4, widthRect4, heightRect4); //
  rect(xRect5, yRect5, widthRect5, heightRect5); //
  //
} //End setup
//
void draw() {

} //End draw
//
void keyPressed() {
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
