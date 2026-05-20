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
float backX, backY, backW, backH;
float searchX, searchY, searchW, searchH;
float exitX, exitY, exitW, exitH;
float imgX, imgY, imgW, imgH;
float songtitleX, songtitleY, songtitleW, songtitleH;
float artistX, artistY, artistW, artistH;
float icon2X, icon2Y, icon2W, icon2H;
float icon3X, icon3Y, icon3W, icon3H;
float progX, progY, progW, progH;
float modifyX, modifyY, modifyW, modifyH;
float speedX, speedY, speedW, speedH;
float bW, bH, bY, bG, startX;
//
PImage image1;
float imageWidthAdjusted, imageHeightAdjusted;
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //DIVs Population using unitless ratios (i.e. millimeters to pixels)
  float paperWidth = 216.0;
  float paperHeight = 279.0;
  //
  backX = appWidth * 10 / paperWidth;
  backY = appHeight * 3 / paperHeight;
  backW = appWidth * 20 / paperWidth;
  backH = appHeight * 13 / paperHeight;
  //
  searchX = appWidth * (paperWidth - 74)/2 / paperWidth;
  searchY = appHeight * 15 / paperHeight;
  searchW = appWidth * 74 / paperWidth;
  searchH = appHeight * 15 / paperHeight;
  //
  exitX = appWidth * (paperWidth - 23) / paperWidth;
  exitY = appHeight * 3 / paperHeight;
  exitW = appWidth * 20 / paperWidth;
  exitH = appHeight * 13 / paperHeight;
  //
  imgW = appWidth * 75 / paperWidth;
  imgX = appWidth * (paperWidth - 75)/2 / paperWidth;
  imgY = appHeight * 50 / paperHeight;
  imgH = appHeight * 101 / paperHeight;
  //
  float layoutAnchorX = appWidth * (paperWidth - 175)/2 / paperWidth;
  //
  songtitleX = layoutAnchorX;
  songtitleY = appHeight * 180 / paperHeight;
  songtitleW = appWidth * 145 / paperWidth;
  songtitleH = appHeight * 15 / paperHeight;
  //
  artistX = layoutAnchorX;
  artistY = appHeight * 200 / paperHeight;
  artistW = appWidth * 77 / paperWidth;
  artistH = appHeight * 9 / paperHeight;
  //
  icon2X = appWidth * (paperWidth - 30) / paperWidth;
  icon2Y = appHeight * 180 / paperHeight;
  icon2W = appWidth * 11 / paperWidth;
  icon2H = appHeight * 11 / paperHeight;
  //
  icon3X = appWidth * (paperWidth - 30) / paperWidth;
  icon3Y = appHeight * 200 / paperHeight;
  icon3W = appWidth * 11 / paperWidth;
  icon3H = appHeight * 11 / paperHeight;
  //
  progX = layoutAnchorX;
  progY = appHeight * 220 / paperHeight;
  progW = appWidth * 175 / paperWidth;
  progH = appHeight * 3 / paperHeight;
  //
  bW = appWidth * 20 / paperWidth; 
  bH = appHeight * 18 / paperHeight; 
  bY = appHeight * 230 / paperHeight; 
  bG = appWidth * 8 / paperWidth;
  //
  modifyX = layoutAnchorX;
  modifyY = appHeight * 260 / paperHeight;
  modifyW = appWidth * 20 / paperWidth;
  modifyH = appHeight * 10 / paperHeight;
  //
  speedX = appWidth * (paperWidth - 91)/2 / paperWidth;
  speedY = appHeight * 320 / paperHeight;
  speedW = appWidth * 91 / paperWidth;
  speedH = appHeight * 10 / paperHeight;
  //
  startX = layoutAnchorX + (progW - (5*bW + 4*bG))/2;
  //
  //2D Music Symbol Variables
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
  //DIVs
  rect(backX, backY, backW, backH);
  rect(searchX, searchY, searchW, searchH);
  rect(exitX, exitY, exitW, exitH);
  rect(imgX, imgY, imgW, imgH); 
  rect(songtitleX, songtitleY, songtitleW, songtitleH);
  rect(artistX, artistY, artistW, artistH);
  rect(icon2X, icon2Y, icon2W, icon2H);
  rect(icon3X, icon3Y, icon3W, icon3H);
  rect(progX, progY, progW, progH);
  rect(modifyX, modifyY, modifyW, modifyH);
  rect(speedX, speedY, speedW, speedH);
  //
  //2D music Symbol Shapes, 2D shapes needed to draw
  // Button 1: Skip Back
  rect(startX, bY, bW, bH);
  rect(startX + bW*1/6, bY + bH*1/5, bW*1/10, bH*3/5);
  triangle(startX + bW*5/6, bY + bH*1/5, startX + bW*1/3, bY + bH*1/2, startX + bW*5/6, bY + bH*4/5);
  // Button 2: Rewind
  rect(startX+(bW+bG), bY, bW, bH);
  triangle(startX+(bW+bG) + bW*1/2, bY + bH*1/5, startX+(bW+bG) + bW*1/10, bY + bH*1/2, startX+(bW+bG) + bW*1/2, bY + bH*4/5);
  triangle(startX+(bW+bG) + bW*9/10, bY + bH*1/5, startX+(bW+bG) + bW*1/2, bY + bH*1/2, startX+(bW+bG) + bW*9/10, bY + bH*4/5);
  // Button 3: Pause
  rect(startX+2*(bW+bG), bY, bW, bH);
  rect(startX+2*(bW+bG) + bW*1/4, bY + bH*1/5, bW*1/6, bH*3/5);
  rect(startX+2*(bW+bG) + bW*7/12, bY + bH*1/5, bW*1/6, bH*3/5);
  // Button 4: Fast Forward
  rect(startX+3*(bW+bG), bY, bW, bH);
  triangle(startX+3*(bW+bG) + bW*1/10, bY + bH*1/5, startX+3*(bW+bG) + bW*1/2, bY + bH*1/2, startX+3*(bW+bG) + bW*1/10, bY + bH*4/5);
  triangle(startX+3*(bW+bG) + bW*1/2, bY + bH*1/5, startX+3*(bW+bG) + bW*9/10, bY + bH*1/2, startX+3*(bW+bG) + bW*1/2, bY + bH*4/5);
  // Button 5: Skip Forward
  rect(startX+4*(bW+bG), bY, bW, bH);
  triangle(startX+4*(bW+bG) + bW*1/6, bY + bH*1/5, startX+4*(bW+bG) + bW*2/3, bY + bH*1/2, startX+4*(bW+bG) + bW*1/6, bY + bH*4/5);
  rect(startX+4*(bW+bG) + bW*3/4, bY + bH*1/5, bW*1/10, bH*3/5);
  // Button 6: Back/Return
  noFill();
  stroke(0);
  strokeWeight(2);
  arc(backX + backW*0.6, backY + backH*0.5, backW*0.5, backH*0.6, -PI, HALF_PI);
  fill(0);
  triangle(backX + backW*0.35, backY + backH*0.2, backX + backW*0.2, backY + backH*0.4, backX + backW*0.45, backY + backH*0.5);
  //Button 7: Shuffle  
  noFill();
  stroke(0);
  strokeWeight(2);
  bezier(icon2X, icon2Y + icon2H*0.8, icon2X + icon2W*0.4, icon2Y + icon2H*0.8, icon2X + icon2W*0.6, icon2Y + icon2H*0.2, icon2X + icon2W*0.8, icon2Y + icon2H*0.2);
  bezier(icon2X, icon2Y + icon2H*0.2, icon2X + icon2W*0.4, icon2Y + icon2H*0.2, icon2X + icon2W*0.6, icon2Y + icon2H*0.8, icon2X + icon2W*0.8, icon2Y + icon2H*0.8);
  fill(0);
  triangle(icon2X + icon2W*0.8, icon2Y + icon2H*0.05, icon2X + icon2W*1.0, icon2Y + icon2H*0.2, icon2X + icon2W*0.8, icon2Y + icon2H*0.35);
  triangle(icon2X + icon2W*0.8, icon2Y + icon2H*0.65, icon2X + icon2W*1.0, icon2Y + icon2H*0.8, icon2X + icon2W*0.8, icon2Y + icon2H*0.95);
  // BUtton 8: Download  
  noFill();
  stroke(0);
  strokeWeight(3);
  beginShape();
  vertex(icon3X + icon3W*0.1, icon3Y + icon3H*0.3);
  vertex(icon3X + icon3W*0.4, icon3Y + icon3H*0.7);
  vertex(icon3X + icon3W*0.9, icon3Y + icon3H*0.1);
  endShape();
  strokeWeight(2);
  rect(icon3X + icon3W*0.05, icon3Y + icon3H*0.75, icon3W*0.9, icon3H*0.1);
  //
  //Images & Aspect Ratio Algoritrhm, including WHILE Loop
  float imageAspectRatio = float(imageWidthOriginal) / float(imageHeightOriginal);
  imageWidthAdjusted = imgW;
  imageHeightAdjusted = imageWidthAdjusted / imageAspectRatio;
  if (imageHeightAdjusted > imgH) {
    imageHeightAdjusted = imgH;
    imageWidthAdjusted = imageHeightAdjusted * imageAspectRatio;
  }
  //
  image(image1, imgX + (imgW - imageWidthAdjusted)/2, imgY + (imgH - imageHeightAdjusted)/2, imageWidthAdjusted, imageHeightAdjusted);
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
  String modifyStar = "✦"; 
  String modifyText = "Modify";

  // Fonts
  PFont mainFont = createFont("Century Schoolbook", 48);
  PFont starFont = createFont("SansSerif", 48); // System font for the star

  // 1. Draw Quit 
  textFont(mainFont, exitH * 0.9);
  text("X", exitX, exitY, exitW, exitH);

  // 2. Draw Song Title
  float fontSizeBottom = songtitleH * 0.9;
  textFont(mainFont, fontSizeBottom);
  while (textWidth(title) > songtitleW) {
    fontSizeBottom *= constantDecrease;
    textFont(mainFont, fontSizeBottom);
  }
  text(title, songtitleX, songtitleY, songtitleW, songtitleH);

  // 3. Draw Artist
  float fontSizeArtist = artistH * 0.9;
  textFont(mainFont, fontSizeArtist);
  while (textWidth(artist) > artistW) {
    fontSizeArtist *= constantDecrease;
    textFont(mainFont, fontSizeArtist);
  }
  text(artist, artistX, artistY, artistW, artistH);

  // 4. Draw Modify Button 
  float fontSizeMod = modifyH * 0.7;
  // Check width with both parts
  textFont(mainFont, fontSizeMod);
  float totalW = textWidth(modifyStar + " " + modifyText);
  while (totalW > modifyW) {
    fontSizeMod *= constantDecrease;
    textFont(mainFont, fontSizeMod);
    totalW = textWidth(modifyStar + " " + modifyText);
  }

  // Draw the star in SansSerif
  textFont(starFont, fontSizeMod);
  text(modifyStar, modifyX + (modifyW * 0.25), modifyY + (modifyH/2));

  // Draw "Modify" in Century Schoolbook
  textFont(mainFont, fontSizeMod);
  text(modifyText, modifyX + (modifyW * 0.6), modifyY + (modifyH/2));

  // 5. Draw Search Lyric
  float fontSizeSearch = searchH * 0.9;
  textFont(mainFont, fontSizeSearch);
  while (textWidth(searchLabel) > searchW) {
    fontSizeSearch *= constantDecrease;
    textFont(mainFont, fontSizeSearch);
  }
  text(searchLabel, searchX, searchY, searchW, searchH);
  
  // 6. Draw Download Text Label below the icon shape
  fill(darkpurpleInk);
  textAlign(CENTER, TOP);
  textFont(mainFont, icon3H * 0.45);
  text("Download", icon3X + icon3W/2, icon3Y + icon3H);
  
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
