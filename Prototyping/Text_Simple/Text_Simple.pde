/* Text, Simple ... Hardcoded */
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

// Colors
color blackBackground = #000000; 
color mutedBoxColor = #E5E4E2;   
color darkpurpleInk = #585062; 

background(blackBackground); 

//Population: DIVs
int numberOfButtons = 13; 
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;

// Quit Button (Top Right)
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;
float quitX = appWidth - quitWidth;
float quitY = 0;

// Song Title DIV
float bottomLeftX = beginningButtonSpace;
float bottomLeftY = appHeight * 13.8/20; 
float bottomLeftWidth = appWidth * 1.5/10; 
float bottomLeftHeight = appHeight * 1/20;

// Artist DIV
float artistX = beginningButtonSpace;
float artistY = bottomLeftY + bottomLeftHeight; 
float artistWidth = bottomLeftWidth * 0.8; 
float artistHeight = appHeight * 1/20;

// Modify Button (Bottom Left, near end)
float modifyX = beginningButtonSpace;
float modifyY = appHeight * 18.5/20; 
float modifyWidth = artistWidth * 0.9; 
float modifyHeight = appHeight * 1/25; 

// Search Lyric Div (Top Middle)
float topMiddleWidth = appWidth * 1/8; 
float topMiddleHeight = appHeight * 1/20;
float topMiddleX = (appWidth/2) - (topMiddleWidth/2); 
float topMiddleY = appHeight * 1/20;

//
//DIV: Image (Drawing the Rectangles)
fill(mutedBoxColor); 
rect(quitX, quitY, quitWidth, quitHeight);
rect(bottomLeftX, bottomLeftY, bottomLeftWidth, bottomLeftHeight); 
rect(artistX, artistY, artistWidth, artistHeight);
rect(modifyX, modifyY, modifyWidth, modifyHeight); 
rect(topMiddleX, topMiddleY, topMiddleWidth, topMiddleHeight); 

//
//Strings, Text, Literal
String title = "Die for me"; 
String artist = "Chase Atlantic";
String searchLabel = "Search Lyric"; 
String modifyStar = "✦"; 
String modifyText = "Modify";

// Fonts
PFont mainFont = createFont("Century Schoolbook", 48);
PFont starFont = createFont("SansSerif", 48); // System font for the star

//Drawing Text
fill(darkpurpleInk); 
textAlign(CENTER, CENTER); 
float constantDecrease = 0.99;

// 1. Draw Quit
textFont(mainFont, quitHeight * 0.9);
text("X", quitX, quitY, quitWidth, quitHeight);

// 2. Draw Song Title
float fontSizeBottom = bottomLeftHeight * 0.9;
textFont(mainFont, fontSizeBottom);
while (textWidth(title) > bottomLeftWidth) {
  fontSizeBottom *= constantDecrease;
  textFont(mainFont, fontSizeBottom);
}
text(title, bottomLeftX, bottomLeftY, bottomLeftWidth, bottomLeftHeight);

// 3. Draw Artist
float fontSizeArtist = artistHeight * 0.9;
textFont(mainFont, fontSizeArtist);
while (textWidth(artist) > artistWidth) {
  fontSizeArtist *= constantDecrease;
  textFont(mainFont, fontSizeArtist);
}
text(artist, artistX, artistY, artistWidth, artistHeight);

// 4. Draw Modify Button (COMBINED FONTS)
float fontSizeMod = modifyHeight * 0.7;
// Check width with both parts
textFont(mainFont, fontSizeMod);
float totalW = textWidth(modifyStar + " " + modifyText);
while (totalW > modifyWidth) {
  fontSizeMod *= constantDecrease;
  textFont(mainFont, fontSizeMod);
  totalW = textWidth(modifyStar + " " + modifyText);
}

// Draw the star in SansSerif
textFont(starFont, fontSizeMod);
text(modifyStar, modifyX + (modifyWidth * 0.25), modifyY + (modifyHeight/2));

// Draw "Modify" in Century Schoolbook
textFont(mainFont, fontSizeMod);
text(modifyText, modifyX + (modifyWidth * 0.6), modifyY + (modifyHeight/2));

// 5. Draw Search Lyric
float fontSizeSearch = topMiddleHeight * 0.9;
textFont(mainFont, fontSizeSearch);
while (textWidth(searchLabel) > topMiddleWidth) {
  fontSizeSearch *= constantDecrease;
  textFont(mainFont, fontSizeSearch);
}
text(searchLabel, topMiddleX, topMiddleY, topMiddleWidth, topMiddleHeight);
