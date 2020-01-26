//Abdullah and Max. EmailScanner project

//Loads custom font into project
PFont Font;

//Colors of the background
int bGRed = 44, bGGreen = 46, bGBlue = 66;

//Colors of the boxes/buttons
int bRed = 180, bGreen = 178, bBlue = 200;

//Define name of a button
Button InsertLinkButton;
Button EmailReportRow1Button;
Button EmailReportRow2Button;
Button EmailReportRow3Button;
Button EmailReportRow4Button;
Button EmailReportRow5Button;
Button EmailReportRow6Button;
Button EmailReportRow7Button;
Button DangerLevelButton;

//Color of the box stroke
int strokeColor = 0;

//Color of text
int textColor = 255;

//Text that gets replaced with input from the user inside of the Insert Link Box
String InsertLinkString = "";

//Defining variables needed for button check
boolean lastMousePressed = false;

//Color of the gradiant
color c1, c2;

//Variable for the y position of the Email Report Rows
int YRRH = 300;

//Variable for the height of the Email Report Rows
int RRH = 30;

void setup() {
  size(400, 800);
  Font = createFont("ApexMk2-Regular.otf", 50, true);
  textFont(Font);
  c1 = color(255, 0, 0);
  c2 = color(0, 255, 0);
}

void draw() {
  background(bGRed, bGGreen, bGBlue);

  //Calculating if mouse has just been pressed
  boolean mouseJustPressed = mousePressed & !lastMousePressed;
  lastMousePressed = mousePressed;

  //Title Box
  noStroke();
  fill (0, 0, 0, 20);
  rect(0, 5, 170, 35);
  //Title of the program at the top of the screen
  fill(255);
  textSize(33); 
  textAlign(LEFT, TOP);
  text("SAFE-LINK", 10, 5);

  //Text for Insert Link Here
  fill(255);
  textSize(25); 
  textAlign(CENTER, TOP);
  text("INSERT LINK HERE", width/2, 100);

  //Insert Link Button
  InsertLinkButton = new Button(25, 150, 350, 30, 10, 10, 10, 10, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  InsertLinkButton.Update();
  if (InsertLinkButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, InsertLinkButton) == true) {
    println("InsertLinkButton has been pressed");
  }

  //Text for Email Report
  fill(255);
  textSize(25); 
  textAlign(CENTER, TOP);
  text("Email Report", width/2, 250);

  //Email Report Row 1 Button
  EmailReportRow1Button = new Button(25, YRRH, 350, RRH, 10, 10, 0, 0, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  EmailReportRow1Button.Update();
  if (EmailReportRow1Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow1Button) == true) {
    println("EmailReportRow1Button has been pressed");
  }

  //Email Report Row 2 Button
  EmailReportRow2Button = new Button(25, YRRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  EmailReportRow2Button.Update();
  if (EmailReportRow2Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow2Button) == true) {
    println("EmailReportRow2Button has been pressed");
  }

  //Email Report Row 3 Button
  EmailReportRow3Button = new Button(25, YRRH+RRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  EmailReportRow3Button.Update();
  if (EmailReportRow3Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow3Button) == true) {
    println("EmailReportRow3Button has been pressed");
  }

  //Email Report Row 4 Button
  EmailReportRow4Button = new Button(25, YRRH+RRH+RRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  EmailReportRow4Button.Update();
  if (EmailReportRow4Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow4Button) == true) {
    println("EmailReportRow4Button has been pressed");
  }

  //Email Report Row 5 Button
  EmailReportRow5Button = new Button(25, YRRH+RRH+RRH+RRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  EmailReportRow5Button.Update();
  if (EmailReportRow5Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow5Button) == true) {
    println("EmailReportRow5Button has been pressed");
  }

  //Email Report Row 6 Button
  EmailReportRow6Button = new Button(25, YRRH+RRH+RRH+RRH+RRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  EmailReportRow6Button.Update();
  if (EmailReportRow6Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow6Button) == true) {
    println("EmailReportRow6Button has been pressed");
  }

  //Email Report Row 7 Button
  EmailReportRow7Button = new Button(25, YRRH+RRH+RRH+RRH+RRH+RRH+RRH, 350, RRH, 0, 0, 10, 10, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  EmailReportRow7Button.Update();
  if (EmailReportRow7Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow7Button) == true) {
    println("EmailReportRow7Button has been pressed");
  }

  //Text for Danger Level
  fill(255);
  textSize(25); 
  textAlign(CENTER, TOP);
  text("Danger Level", width/2, 600);

  //DangerLevel Button
  DangerLevelButton = new Button(25, 650, 350, 30, 10, 10, 10, 10, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  DangerLevelButton.Update();
  if (DangerLevelButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton) == true) {
    println("DangerLevelButton has been pressed");
  }

  //Draws the Gradient Rectangle
  setGradient(25, 650, 350, 30, c2, c1);
}

void setGradient(int x, int y, float w, float h, color c1, color c2) {
  for (int i = x; i <= x+w; i++) {
    float inter = map(i, x, x+w, 0, 1);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    line(i, y, i, y+h);
  }
}
