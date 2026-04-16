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

// Song Title DIV (Bottom Left)
float bottomLeftX = beginningButtonSpace;
float bottomLeftY = appHeight * 15/20; 
float bottomLeftWidth = appWidth * 1.5/10; 
float bottomLeftHeight = appHeight * 1/20;

// Artist DIV (Below Song Title)
float artistX = beginningButtonSpace;
float artistY = bottomLeftY + bottomLeftHeight; 
float artistWidth = bottomLeftWidth * 0.8; 
float artistHeight = appHeight * 1/20;

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
rect(topMiddleX, topMiddleY, topMiddleWidth, topMiddleHeight); 

//
//Strings, Text, Literal
String title = "Die for me"; 
String artist = "Chase Atlantic";
String searchLabel = "Search Lyric"; 

// Fonts
PFont font; 
// Updated to Century Schoolbook
font = createFont("Century Schoolbook", 48);

//Drawing Text
fill(darkpurpleInk); 
textAlign(CENTER, CENTER); 

float constantDecrease = 0.99;

// 1. Draw Quit Text
float fontSize3 = quitHeight * 0.9;
textFont(font, fontSize3);
text("X", quitX, quitY, quitWidth, quitHeight);

// 2. Draw Song Title
float fontSizeBottom = bottomLeftHeight * 0.9;
textFont(font, fontSizeBottom);
while (textWidth(title) > bottomLeftWidth) {
  fontSizeBottom *= constantDecrease;
  textFont(font, fontSizeBottom);
}
text(title, bottomLeftX, bottomLeftY, bottomLeftWidth, bottomLeftHeight);

// 3. Draw Artist
float fontSizeArtist = artistHeight * 0.9;
textFont(font, fontSizeArtist);
while (textWidth(artist) > artistWidth) {
  fontSizeArtist *= constantDecrease;
  textFont(font, fontSizeArtist);
}
text(artist, artistX, artistY, artistWidth, artistHeight);

// 4. Draw Search Lyric
float fontSizeSearch = topMiddleHeight * 0.9;
textFont(font, fontSizeSearch);
while (textWidth(searchLabel) > topMiddleWidth) {
  fontSizeSearch *= constantDecrease;
  textFont(font, fontSizeSearch);
}
text(searchLabel, topMiddleX, topMiddleY, topMiddleWidth, topMiddleHeight);
