/* Text, Simple ... Hardcoded
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

// Colors 
color mutedBoxColor = #E5E4E2;
color darkpurpleInk = #585062;

//
//Population: DIVs 
int numberOfButtons = 13;
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;

// Quit Button
float quitX = appWidth - appHeight*1/20;
float quitY = 0;
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;

// Song Title DIV
float bottomLeftX = beginningButtonSpace;
float bottomLeftY = appHeight*13.8/20;
float bottomLeftWidth = appWidth*1.5/10;
float bottomLeftHeight = appHeight*1/20;

// Artist DIV
float artistX = beginningButtonSpace;
float artistY = bottomLeftY + bottomLeftHeight;
float artistWidth = bottomLeftWidth*0.8;
float artistHeight = appHeight*1/20;

// Modify DIV
float modifyX = beginningButtonSpace;
float modifyY = appHeight*18.5/20;
float modifyWidth = artistWidth*0.9;
float modifyHeight = appHeight*1/25;

// Search Lyric DIV
float topMiddleX = appWidth/2 - (appWidth*1/8)/2;
float topMiddleY = appHeight*1/20;
float topMiddleWidth = appWidth*1/8;
float topMiddleHeight = appHeight*1/20;

//
//DIV: Image 
fill(mutedBoxColor); 
rect(quitX, quitY, quitWidth, quitHeight);
rect(bottomLeftX, bottomLeftY, bottomLeftWidth, bottomLeftHeight);
rect(artistX, artistY, artistWidth, artistHeight);
rect(modifyX, modifyY, modifyWidth, modifyHeight);
rect(topMiddleX, topMiddleY, topMiddleWidth, topMiddleHeight);

//
//Strings, Text, Literal 
String quit = "X";
String title = "Die for me";
String artist = "Chase Atlantic";
String modify = "Modify";
String searchLabel = "Search Lyric";

//
// Fonts from OS
float fontSize1 = bottomLeftHeight;
float fontSize2 = artistHeight;
float fontSize3 = modifyHeight;
float fontSize4 = topMiddleHeight;
float fontSize5 = quitHeight;

PFont font;
String centurySchoolbook = "Century Schoolbook";
font = createFont(centurySchoolbook, fontSize1);

//
//Drawing Text 
fill(darkpurpleInk);
textAlign(CENTER, CENTER);

// Procedure Passing RECT(#) && fontSize(RECT#)
float constantDecrease = 0.99;
int iWhile = 0;

//
// Song Title Loop & Draw
textFont(font, fontSize1); 
while ( textWidth(title) > bottomLeftWidth ) {
  iWhile++;
  if ( iWhile > 10000 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize1);
}
text(title, bottomLeftX, bottomLeftY, bottomLeftWidth, bottomLeftHeight);

//
// Artist Loop & Draw
textFont(font, fontSize2);
iWhile = 0;
while ( textWidth(artist) > artistWidth ) {
  iWhile++;
  if ( iWhile > 10000 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize2 *= constantDecrease;
  textFont(font, fontSize2);
}
text(artist, artistX, artistY, artistWidth, artistHeight);

//
// Modify Loop & Draw
textFont(font, fontSize3);
iWhile = 0;
while ( textWidth(modify) > modifyWidth ) {
  iWhile++;
  if ( iWhile > 10000 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
}
text(modify, modifyX, modifyY, modifyWidth, modifyHeight);

//
// Search Lyric Loop & Draw
textFont(font, fontSize4);
iWhile = 0;
while ( textWidth(searchLabel) > topMiddleWidth ) {
  iWhile++;
  if ( iWhile > 10000 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize4 *= constantDecrease;
  textFont(font, fontSize4);
}
text(searchLabel, topMiddleX, topMiddleY, topMiddleWidth, topMiddleHeight);

//
// Quit Loop & Draw
textFont(font, fontSize5);
iWhile = 0;
while ( textWidth(quit) > quitWidth ) {
  iWhile++;
  if ( iWhile > 10000 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize5 *= constantDecrease;
  textFont(font, fontSize5);
}
text(quit, quitX, quitY, quitWidth, quitHeight);
