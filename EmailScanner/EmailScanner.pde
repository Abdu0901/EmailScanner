//Abdullah and Max. EmailScanner project

//Colors of the background
int bGRed = 44, bGGreen = 46, bGBlue = 66;

//Colors of the boxes/buttons
int bRed = 180, bGreen = 178, bBlue = 200;

//Define name of a button
Button InsertLinkButton;

//Color of the box stroke
int strokeColor = 0;

//Color of text
int textColor = 0;

//Defining variables needed for button check
boolean lastMousePressed = false;

void setup() {
  size(400, 800);
}

void draw() {
  background(bGRed, bGGreen, bGBlue);

  //Calculating if mouse has just been pressed
  boolean mouseJustPressed = mousePressed & !lastMousePressed;
  lastMousePressed = mousePressed;

  //Title Box
  noStroke();
  fill (0, 0, 0, 20);
  rect(0, 5, 200, 30);
  //Title of the program at the top of the screen
  fill(255);
  textSize(33); 
  textAlign(LEFT, TOP);
  text("SAFE-LINK", 10, 0);

  //Insert Link Button
  InsertLinkButton = new Button(100, 100, 200, 50, 10, strokeColor, textColor, "Insert Link here", 15, 0, bRed, bGreen, bBlue);
  InsertLinkButton.Update();
  if (InsertLinkButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, InsertLinkButton) == true) {
    println("InsertLinkButton has been pressed");
  }
}
