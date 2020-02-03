//Abdullah and Max. EmailScanner project

//Loads custom font into project
PFont Font;

//Colors of the background
int bGRed = 44, bGGreen = 46, bGBlue = 66;

//Colors of the boxes/buttons
int bRed = 180, bGreen = 178, bBlue = 200;

PImage CheckMark;

//Define name of a button
Button InsertLinkButton;
Button InsertLinkCheckButton;
Button EmailReportRow1Button;
Button EmailReportRow2Button;
Button EmailReportRow3Button;
Button EmailReportRow4Button;
Button EmailReportRow5Button;
Button EmailReportRow6Button;
Button EmailReportRow7Button;
Button DangerLevelButton;
Button DangerLevelButton1;
Button DangerLevelButton2;
Button DangerLevelButton3;
Button DangerLevelButton4;
Button DangerLevelButton5;
Button DangerLevelButton6;
Button DangerLevelButton7;
Button DangerLevelButton8;
Button DangerLevelButton9;
Button DangerLevelButton10;

//Color of the box stroke
int strokeColor = 0;

//Color of text
int textColor = 255;

//Defining variables needed for button check
boolean lastMousePressed = false;

//Variable for the y position of the Email Report Rows
int YRRH = 300;

//Variable for the height of the Email Report Rows
int RRH = 30;

void setup() {
  size(400, 800);
  Font = createFont("ApexMk2-Regular.otf", 50, true);
  textFont(Font);
  CheckMark = loadImage("CheckMark.png");
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
  InsertLinkButton = new Button(25, 150, 300, 30, 10, 0, 0, 10, strokeColor, textColor, InsertLinkString, 15, 2, bRed, bGreen, bBlue);
  InsertLinkButton.Update();
  if (InsertLinkButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, InsertLinkButton) == true) {
    println("InsertLinkButton has been pressed");
    RemoveBoxFocuses();
    isInsertLinkButtonInFocus = true;
    InsertLinkString = "";
  }

  //Insert Link Check Button
  InsertLinkCheckButton = new Button(325, 150, 50, 30, 0, 10, 10, 0, strokeColor, textColor, "", 15, 2, bRed, bGreen, bBlue);
  InsertLinkCheckButton.Update();
  if (InsertLinkCheckButton.isButtonPressed(mouseX, mouseY, mouseJustPressed, InsertLinkCheckButton) == true) {
    println("InsertLinkCheckButton has been pressed");
  }
  
  //Adds picture of checkmark on the check button
  CheckMark.resize(50, 30);
  image(CheckMark, 325, 150);

  //Text for Email Report
  fill(255);
  textSize(25); 
  textAlign(CENTER, TOP);
  text("Email Report", width/2, 250);

  //Email Report Row 1 Button
  EmailReportRow1Button = new Button(25, YRRH, 350, RRH, 10, 10, 0, 0, strokeColor, textColor, "", 15, 2, bRed, bGreen, bBlue);
  EmailReportRow1Button.Update();
  if (EmailReportRow1Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow1Button) == true) {
    println("EmailReportRow1Button has been pressed");
  }

  //Email Report Row 2 Button
  EmailReportRow2Button = new Button(25, YRRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, "", 15, 2, bRed, bGreen, bBlue);
  EmailReportRow2Button.Update();
  if (EmailReportRow2Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow2Button) == true) {
    println("EmailReportRow2Button has been pressed");
  }

  //Email Report Row 3 Button
  EmailReportRow3Button = new Button(25, YRRH+RRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, "", 15, 2, bRed, bGreen, bBlue);
  EmailReportRow3Button.Update();
  if (EmailReportRow3Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow3Button) == true) {
    println("EmailReportRow3Button has been pressed");
  }

  //Email Report Row 4 Button
  EmailReportRow4Button = new Button(25, YRRH+RRH+RRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, "", 15, 2, bRed, bGreen, bBlue);
  EmailReportRow4Button.Update();
  if (EmailReportRow4Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow4Button) == true) {
    println("EmailReportRow4Button has been pressed");
  }

  //Email Report Row 5 Button
  EmailReportRow5Button = new Button(25, YRRH+RRH+RRH+RRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, "", 15, 2, bRed, bGreen, bBlue);
  EmailReportRow5Button.Update();
  if (EmailReportRow5Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow5Button) == true) {
    println("EmailReportRow5Button has been pressed");
  }

  //Email Report Row 6 Button
  EmailReportRow6Button = new Button(25, YRRH+RRH+RRH+RRH+RRH+RRH, 350, RRH, 0, 0, 0, 0, strokeColor, textColor, "", 15, 2, bRed, bGreen, bBlue);
  EmailReportRow6Button.Update();
  if (EmailReportRow6Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow6Button) == true) {
    println("EmailReportRow6Button has been pressed");
  }

  //Email Report Row 7 Button
  EmailReportRow7Button = new Button(25, YRRH+RRH+RRH+RRH+RRH+RRH+RRH, 350, RRH, 0, 0, 10, 10, strokeColor, textColor, "", 15, 2, bRed, bGreen, bBlue);
  EmailReportRow7Button.Update();
  if (EmailReportRow7Button.isButtonPressed(mouseX, mouseY, mouseJustPressed, EmailReportRow7Button) == true) {
    println("EmailReportRow7Button has been pressed");
  }

  //Text for Danger Level
  fill(255);
  textSize(25); 
  textAlign(CENTER, TOP);
  text("Danger Level", width/2, 600);

  //DangerLevel Button1
  DangerLevelButton1 = new Button(25, 650, 35, 30, 10, 0, 0, 10, strokeColor, textColor, "1", 15, 0, 0, 200, 0);
  DangerLevelButton1.Update();
  if (DangerLevelButton1.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton1) == true) {
    println("DangerLevelButton1 has been pressed");
  }

  //DangerLevel Button2
  DangerLevelButton2 = new Button(60, 650, 35, 30, 0, 0, 0, 0, strokeColor, textColor, "2", 15, 0, 0, 200, 0);
  DangerLevelButton2.Update();
  if (DangerLevelButton2.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton2) == true) {
    println("DangerLevelButton2 has been pressed");
  }

  //DangerLevel Button3
  DangerLevelButton3 = new Button(95, 650, 35, 30, 0, 0, 0, 0, strokeColor, textColor, "3", 15, 0, 0, 200, 0);
  DangerLevelButton3.Update();
  if (DangerLevelButton3.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton3) == true) {
    println("DangerLevelButton3 has been pressed");
  }

  //DangerLevel Button4
  DangerLevelButton4 = new Button(130, 650, 35, 30, 0, 0, 0, 0, strokeColor, textColor, "4", 15, 0, 225, 225, 0);
  DangerLevelButton4.Update();
  if (DangerLevelButton4.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton4) == true) {
    println("DangerLevelButton4 has been pressed");
  }

  //DangerLevel Button5
  DangerLevelButton5 = new Button(165, 650, 35, 30, 0, 0, 0, 0, strokeColor, textColor, "5", 15, 0, 225, 225, 0);
  DangerLevelButton5.Update();
  if (DangerLevelButton5.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton5) == true) {
    println("DangerLevelButton5 has been pressed");
  }

  //DangerLevel Button6
  DangerLevelButton6 = new Button(200, 650, 35, 30, 0, 0, 0, 0, strokeColor, textColor, "6", 15, 0, 225, 150, 0);
  DangerLevelButton6.Update();
  if (DangerLevelButton6.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton6) == true) {
    println("DangerLevelButton6 has been pressed");
  }

  //DangerLevel Button7
  DangerLevelButton7 = new Button(235, 650, 35, 30, 0, 0, 0, 0, strokeColor, textColor, "7", 15, 0, 225, 150, 0);
  DangerLevelButton7.Update();
  if (DangerLevelButton7.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton7) == true) {
    println("DangerLevelButton7 has been pressed");
  }

  //DangerLevel Button8
  DangerLevelButton8 = new Button(270, 650, 35, 30, 0, 0, 0, 0, strokeColor, textColor, "8", 15, 0, 255, 0, 0);
  DangerLevelButton8.Update();
  if (DangerLevelButton8.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton8) == true) {
    println("DangerLevelButton8 has been pressed");
  }

  //DangerLevel Button9
  DangerLevelButton9 = new Button(305, 650, 35, 30, 0, 0, 0, 0, strokeColor, textColor, "9", 15, 0, 255, 0, 0);
  DangerLevelButton9.Update();
  if (DangerLevelButton9.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton9) == true) {
    println("DangerLevelButton9 has been pressed");
  }

  //DangerLevel Button10
  DangerLevelButton10 = new Button(340, 650, 35, 30, 0, 10, 10, 0, strokeColor, textColor, "10", 15, 0, 255, 0, 0);
  DangerLevelButton10.Update();
  if (DangerLevelButton10.isButtonPressed(mouseX, mouseY, mouseJustPressed, DangerLevelButton10) == true) {
    println("DangerLevelButton10 has been pressed");
  }
}
