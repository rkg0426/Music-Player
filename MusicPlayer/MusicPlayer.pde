/* Music App, Final Project */
//
//Minim Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
/* Global Variables
 - Possible DIV-vars needed in draw(), etc.
 - MUST: Music Button-vars, possibly associated DIV-vars
 */
float backDivX, backDivY, backDivWidth, backDivHeight;
float searchDivX, searchDivY, searchDivWidth, searchDivHeight;
float exitDivX, exitDivY, exitDivWidth, exitDivHeight;
float imgDivX, imgDivY, imgDivWidth, imgDivHeight;
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
float artistDivX, artistDivY, artistDivWidth, artistDivHeight;
float shuffleDivX, shuffleDivY, shuffleDivWidth, shuffleDivHeight;
float downloadDivX, downloadDivY, downloadDivWidth, downloadDivHeight;
float progDivX, progDivY, progDivWidth, progDivHeight;
float modifyDivX, modifyDivY, modifyDivWidth, modifyDivHeight;
float speedDivX, speedDivY, speedDivWidth, speedDivHeight;
float bW, bH, bY, bG, startX;
//
PImage image1;
float imageWidthAdjusted, imageHeightAdjusted;
//
void setup() {
  //Display
  println(displayWidth, displayHeight);
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //DIVs Population using unitless ratios (i.e. millimeters to pixels)
  int paperWidth = 216;
  int paperHeight = 279;
  //
  backDivX = appWidth * 10 / paperWidth;
  backDivY = appHeight * 3 / paperHeight;
  backDivWidth = appWidth * 20 / paperWidth;
  backDivHeight = appHeight * 13 / paperHeight;
  //
  searchDivX = appWidth * 71 / paperWidth;
  searchDivY = appHeight * 15 / paperHeight;
  searchDivWidth = appWidth * 74 / paperWidth;
  searchDivHeight = appHeight * 15 / paperHeight;
  //
  exitDivX = appWidth * 193 / paperWidth;
  exitDivY = appHeight * 3 / paperHeight;
  exitDivWidth = appWidth * 20 / paperWidth;
  exitDivHeight = appHeight * 13 / paperHeight;
  //
  imgDivX = appWidth * 70 / paperWidth;
  imgDivY = appHeight * 50 / paperHeight;
  imgDivWidth = appWidth * 75 / paperWidth;
  imgDivHeight = appHeight * 89 / paperHeight;
  //
  songTitleDivX = appWidth * 20 / paperWidth;
  songTitleDivY = appHeight * 180 / paperHeight;
  songTitleDivWidth = appWidth * 80 / paperWidth;
  songTitleDivHeight = appHeight * 15 / paperHeight;
  //
  artistDivX = appWidth * 20 / paperWidth;
  artistDivY = appHeight * 200 / paperHeight;
  artistDivWidth = appWidth * 77 / paperWidth;
  artistDivHeight = appHeight * 9 / paperHeight;
  //
  shuffleDivX = appWidth * 186 / paperWidth;
  shuffleDivY = appHeight * 180 / paperHeight;
  shuffleDivWidth = appWidth * 11 / paperWidth;
  shuffleDivHeight = appHeight * 11 / paperHeight;
  //
  downloadDivX = appWidth * 186 / paperWidth;
  downloadDivY = appHeight * 200 / paperHeight;
  downloadDivWidth = appWidth * 11 / paperWidth;
  downloadDivHeight = appHeight * 11 / paperHeight;
  //
  progDivX = appWidth * 20 / paperWidth;
  progDivY = appHeight * 220 / paperHeight;
  progDivWidth = appWidth * 175 / paperWidth;
  progDivHeight = appHeight * 3 / paperHeight;
  //
  bW = appWidth * 20 / paperWidth; 
  bH = appHeight * 18 / paperHeight; 
  bY = appHeight * 230 / paperHeight; 
  bG = appWidth * 8 / paperWidth;
  //
  modifyDivX = appWidth * 20 / paperWidth;
  modifyDivY = appHeight * 260 / paperHeight;
  modifyDivWidth = appWidth * 20 / paperWidth;
  modifyDivHeight = appHeight * 10 / paperHeight;
  //
  speedDivX = appWidth * 62 / paperWidth;
  speedDivY = appHeight * 320 / paperHeight;
  speedDivWidth = appWidth * 91 / paperWidth;
  speedDivHeight = appHeight * 10 / paperHeight;
  //
  startX = songTitleDivX + (progDivWidth - (5*bW + 4*bG))/2;
  //
  //2D Music Symbol Variables
  //
  // Button 1: Skip Back 
  float skipBackDivX = startX;
  float skipBackDivY = bY;
  float skipBackDivWidth = bW;
  float skipBackDivHeight = bH;
  float skipBackBarX = skipBackDivX + skipBackDivWidth*1/6;
  float skipBackBarY = skipBackDivY + skipBackDivHeight*1/5;
  float skipBackBarWidth = skipBackDivWidth*1/10;
  float skipBackBarHeight = skipBackDivHeight*3/5;
  float skipBackTriX1 = skipBackDivX + skipBackDivWidth*5/6;
  float skipBackTriY2 = skipBackDivY + skipBackDivHeight*1/5;
  float skipBackTriX3 = skipBackDivX + skipBackDivWidth*1/3;
  float skipBackTriY4 = skipBackDivY + skipBackDivHeight*1/2;
  float skipBackTriX5 = skipBackDivX + skipBackDivWidth*5/6;
  float skipBackTriY6 = skipBackDivY + skipBackDivHeight*4/5;
  //
  // Button 2: Rewind 
  float rewindDivX = startX + 1*(bW+bG);
  float rewindDivY = bY;
  float rewindDivWidth = bW;
  float rewindDivHeight = bH;
  float rewindTri1X1 = rewindDivX + rewindDivWidth*1/2;
  float rewindTri1Y2 = rewindDivY + rewindDivHeight*1/5;
  float rewindTri1X3 = rewindDivX + rewindDivWidth*1/10;
  float rewindTri1Y4 = rewindDivY + rewindDivHeight*1/2;
  float rewindTri1X5 = rewindDivX + rewindDivWidth*1/2;
  float rewindTri1Y6 = rewindDivY + rewindDivHeight*4/5;
  float rewindTri2X1 = rewindDivX + rewindDivWidth*9/10;
  float rewindTri2Y2 = rewindDivY + rewindDivHeight*1/5;
  float rewindTri2X3 = rewindDivX + rewindDivWidth*1/2;
  float rewindTri2Y4 = rewindDivY + rewindDivHeight*1/2;
  float rewindTri2X5 = rewindDivX + rewindDivWidth*9/10;
  float rewindTri2Y6 = rewindDivY + rewindDivHeight*4/5;
  //
  // Button 3: Pause 
  float pauseDivX = startX + 2*(bW+bG);
  float pauseDivY = bY;
  float pauseDivWidth = bW;
  float pauseDivHeight = bH;
  float pauseBar1X = pauseDivX + pauseDivWidth*1/4;
  float pauseBar1Y = pauseDivY + pauseDivHeight*1/5;
  float pauseBar1Width = pauseDivWidth*1/6;
  float pauseBar1Height = pauseDivHeight*3/5;
  float pauseBar2X = pauseDivX + pauseDivWidth*7/12;
  float pauseBar2Y = pauseDivY + pauseDivHeight*1/5;
  float pauseBar2Width = pauseDivWidth*1/6;
  float pauseBar2Height = pauseDivHeight*3/5;
  //
  // Button 4: Fast Forward 
  float ffDivX = startX + 3*(bW+bG);
  float ffDivY = bY;
  float ffDivWidth = bW;
  float ffDivHeight = bH;
  float ffTri1X1 = ffDivX + ffDivWidth*1/10;
  float ffTri1Y2 = ffDivY + ffDivHeight*1/5;
  float ffTri1X3 = ffDivX + ffDivWidth*1/2;
  float ffTri1Y4 = ffDivY + ffDivHeight*1/2;
  float ffTri1X5 = ffDivX + ffDivWidth*1/10;
  float ffTri1Y6 = ffDivY + ffDivHeight*4/5;
  float ffTri2X1 = ffDivX + ffDivWidth*1/2;
  float ffTri2Y2 = ffDivY + ffDivHeight*1/5;
  float ffTri2X3 = ffDivX + ffDivWidth*9/10;
  float ffTri2Y4 = ffDivY + ffDivHeight*1/2;
  float ffTri2X5 = ffDivX + ffDivWidth*1/2;
  float ffTri2Y6 = ffDivY + ffDivHeight*4/5;
  //
  // Button 5: Skip Forward 
  float skipForwardDivX = startX + 4*(bW+bG);
  float skipForwardDivY = bY;
  float skipForwardDivWidth = bW;
  float skipForwardDivHeight = bH;
  float skipForwardTriX1 = skipForwardDivX + skipForwardDivWidth*1/6;
  float skipForwardTriY2 = skipForwardDivY + skipForwardDivHeight*1/5;
  float skipForwardTriX3 = skipForwardDivX + skipForwardDivWidth*2/3;
  float skipForwardTriY4 = skipForwardDivY + skipForwardDivHeight*1/2;
  float skipForwardTriX5 = skipForwardDivX + skipForwardDivWidth*1/6;
  float skipForwardTriY6 = skipForwardDivY + skipForwardDivHeight*4/5;
  float skipForwardBarX = skipForwardDivX + skipForwardDivWidth*3/4;
  float skipForwardBarY = skipForwardDivY + skipForwardDivHeight*1/5;
  float skipForwardBarWidth = skipForwardDivWidth*1/10;
  float skipForwardBarHeight = skipForwardDivHeight*3/5;
  //
  //Directory or Pathway to Images
  String upArrow = "..";
  String open = "/";
  String imageDirectory = upArrow + open + upArrow + open + "Dependencies/Images/";
  String pathway1 = imageDirectory + "wp14072262" + ".jpg";
  //
  //PImage Vars + Dimensions (width & height)
  image1 = loadImage(pathway1);
  int imageWidthOriginal = 1920; 
  int imageHeightOriginal = 1095;
  //
  //DIVs Drawing
  rect(searchDivX, searchDivY, searchDivWidth, searchDivHeight);
  rect(exitDivX, exitDivY, exitDivWidth, exitDivHeight);
  rect(imgDivX, imgDivY, imgDivWidth, imgDivHeight); 
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(artistDivX, artistDivY, artistDivWidth, artistDivHeight);
  rect(progDivX, progDivY, progDivWidth, progDivHeight);
  rect(modifyDivX, modifyDivY, modifyDivWidth, modifyDivHeight);
  rect(speedDivX, speedDivY, speedDivWidth, speedDivHeight);
  //
  //2D music Symbol Shapes, 2D shapes needed to draw
  // Button 1: Skip Back
  rect(skipBackDivX, skipBackDivY, skipBackDivWidth, skipBackDivHeight);
  rect(skipBackBarX, skipBackBarY, skipBackBarWidth, skipBackBarHeight);
  triangle(skipBackTriX1, skipBackTriY2, skipBackTriX3, skipBackTriY4, skipBackTriX5, skipBackTriY6);
  //
  // Button 2: Rewind
  rect(rewindDivX, rewindDivY, rewindDivWidth, rewindDivHeight);
  triangle(rewindTri1X1, rewindTri1Y2, rewindTri1X3, rewindTri1Y4, rewindTri1X5, rewindTri1Y6);
  triangle(rewindTri2X1, rewindTri2Y2, rewindTri2X3, rewindTri2Y4, rewindTri2X5, rewindTri2Y6);
  //
  // Button 3: Pause
  rect(pauseDivX, pauseDivY, pauseDivWidth, pauseDivHeight);
  rect(pauseBar1X, pauseBar1Y, pauseBar1Width, pauseBar1Height);
  rect(pauseBar2X, pauseBar2Y, pauseBar2Width, pauseBar2Height);
  //
  // Button 4: Fast Forward
  rect(ffDivX, ffDivY, ffDivWidth, ffDivHeight);
  triangle(ffTri1X1, ffTri1Y2, ffTri1X3, ffTri1Y4, ffTri1X5, ffTri1Y6);
  triangle(ffTri2X1, ffTri2Y2, ffTri2X3, ffTri2Y4, ffTri2X5, ffTri2Y6);
  //
  // Button 5: Skip Forward
  rect(skipForwardDivX, skipForwardDivY, skipForwardDivWidth, skipForwardDivHeight);
  triangle(skipForwardTriX1, skipForwardTriY2, skipForwardTriX3, skipForwardTriY4, skipForwardTriX5, skipForwardTriY6);
  rect(skipForwardBarX, skipForwardBarY, skipForwardBarWidth, skipForwardBarHeight);
  //
  //Images & Aspect Ratio Algoritrhm, including WHILE Loop
  float imageAspectRatio = ( imageWidthOriginal > imageHeightOriginal ) ? float(imageWidthOriginal) / float(imageHeightOriginal) : float(imageHeightOriginal) / float(imageWidthOriginal) ;
  imageWidthAdjusted = imgDivWidth;
  imageHeightAdjusted = ( imageWidthOriginal >= imgDivWidth ) ? imageWidthAdjusted / imageAspectRatio : imageWidthAdjusted * imageAspectRatio ;
        
  while ( imageHeightAdjusted > imgDivHeight ) {
    imageWidthAdjusted *= 0.99;
    imageHeightAdjusted = imageWidthAdjusted / imageAspectRatio ; 
  }//End WHILE
  //
  image(image1, imgDivX + (imgDivWidth - imageWidthAdjusted)/2, imgDivY + (imgDivHeight - imageHeightAdjusted)/2, imageWidthAdjusted, imageHeightAdjusted);
  //
  //Drawing Text - Formatting Text Functions & Ink Variables
  // Colors and Ink
  color darkpurpleInk = #585062; 
  fill(darkpurpleInk); 
  textAlign(CENTER, CENTER); 
  float constantDecrease = 0.99;

  // Strings, Text, Literal
  String title = "Die for me"; 
  String artist = "Chase Atlantic";
  String searchLabel = "Search Lyric"; 
  String modifyText = "Modify";

  // Fonts
  PFont mainFont = createFont("Century Schoolbook", 48);

  // 1. Draw Quit 
  textFont(mainFont, exitDivHeight * 0.9);
  text("X", exitDivX, exitDivY, exitDivWidth, exitDivHeight);

  // 2. Draw Song Title
  float fontSizeBottom = songTitleDivHeight * 0.9;
  textFont(mainFont, fontSizeBottom);
  while (textWidth(title) > songTitleDivWidth) {
    fontSizeBottom *= constantDecrease;
    textFont(mainFont, fontSizeBottom);
  }
  text(title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);

  // 3. Draw Artist
  float fontSizeArtist = artistDivHeight * 0.9;
  textFont(mainFont, fontSizeArtist);
  while (textWidth(artist) > artistDivWidth) {
    fontSizeArtist *= constantDecrease;
    textFont(mainFont, fontSizeArtist);
  }
  text(artist, artistDivX, artistDivY, artistDivWidth, artistDivHeight);

  // 4. Draw Modify Button 
  float fontSizeMod = modifyDivHeight * 0.7;
  textFont(mainFont, fontSizeMod);
  
  // Dynamic scale reduction check for "Modify" string width alone
  while (textWidth(modifyText) > modifyDivWidth) {
    fontSizeMod *= constantDecrease;
    textFont(mainFont, fontSizeMod);
  }

  // Draw "Modify" centered smoothly within its designated block boundary
  text(modifyText, modifyDivX, modifyDivY, modifyDivWidth, modifyDivHeight);

  // 5. Draw Search Lyric
  float fontSizeSearch = searchDivHeight * 0.9;
  textFont(mainFont, fontSizeSearch);
  while (textWidth(searchLabel) > searchDivWidth) {
    fontSizeSearch *= constantDecrease;
    textFont(mainFont, fontSizeSearch);
  }
  text(searchLabel, searchDivX, searchDivY, searchDivWidth, searchDivHeight);
  
}//End Setup
//
void draw() {
  //2D Music Symbol Changes
}//End Draw
//
void mousePressed() {
  //2D Music Symbol Changes
}//End Mouse Pressed
//
void keyPressed() {
}//End Key Pressed
//
//End MAIN Program
