//Text that gets replaced with input from the user inside of the Insert Link Box
String InsertLinkString = "";

//Shows if a box is in focus
boolean isInsertLinkButtonInFocus = false;

//The max amount of letters that can be inputtet
int maxTextLength = 25;

//Used in keypressed function
String stringLink = "";

void keyPressed() {
  //Makes the Box in Focus be typable
  if (isInsertLinkButtonInFocus) {
    if (maxTextLength > InsertLinkString.length()) {
      InsertLinkString += key;
    }
    if ( key == ENTER || key == RETURN ) {
      stringLink =  InsertLinkString;
      println(stringLink);
      RemoveBoxFocuses();
    }
  }
}

void RemoveBoxFocuses() {
  isInsertLinkButtonInFocus = false;
}
