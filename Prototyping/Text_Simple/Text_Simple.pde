/* Text, Simple ... Hardcoded
 */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population: DIVs
int numberOfButtons = 13; 
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;

// Quit Button (Top Right)
float quitX = appWidth - appHeight*1/20;
float quitY = 0;
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;

// Song Title DIV (Bottom Left)
float bottomLeftX = beginningButtonSpace;
float bottomLeftY = appHeight * 15/20; 
float bottomLeftWidth = appWidth * 0.5/3;
float bottomLeftHeight = appHeight * 1/20;

//
//DIV: Image (Drawing the Rectangles)
rect(quitX, quitY, quitWidth, quitHeight);
rect(bottomLeftX, bottomLeftY, bottomLeftWidth, bottomLeftHeight); 

//
//Strings, Text, Literal
String title = "Die for me"; 

// Fonts from OS
float fontSize3 = appHeight; 
float fontSizeBottom = appHeight; 

PFont font; 
String harrington = "Harrington"; 
font = createFont(harrington, fontSizeBottom);

// Aspect Ratio for Harrington
float fontSizeHarrington = 40; 
float divHeightHarrington = bottomLeftHeight; 
float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington; 
float textAdjustment = 0.9;

fontSize3 = quitHeight * harringtonAspectRatio * textAdjustment;
fontSizeBottom = bottomLeftHeight * harringtonAspectRatio * textAdjustment;

//Drawing Text
color darkpurpleInk = #585062; 
color whiteInk = #FFFFFF; 
color resetInk = whiteInk;

fill(darkpurpleInk); 
textAlign (CENTER, CENTER); 

float constantDecrease = 0.99;
int iWhile=0;

// 1. Draw Quit Button Text
textFont(font, fontSize3);
iWhile = 0;
while (textWidth("X") > quitWidth) {
  iWhile++;
  if ( iWhile > 1000 ) { exit(); }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
}
text( "X", quitX, quitY, quitWidth, quitHeight );

// 2. Draw Song Title in Bottom Left
textFont(font, fontSizeBottom);
iWhile = 0;
while (textWidth(title) > bottomLeftWidth) {
  iWhile++;
  if ( iWhile > 1000 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSizeBottom *= constantDecrease;
  textFont(font, fontSizeBottom);
}
text( title, bottomLeftX, bottomLeftY, bottomLeftWidth, bottomLeftHeight );

fill(resetInk);
