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
void setup() {} //End setup
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
