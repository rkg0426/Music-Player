/* Music App, Final Project
 */
//
//Minim Library - Do not copy, only add through File / Sketch
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
PImage image1;
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

  //Search DIV
  float searchDivX = appWidth * 71 / paperWidth;
  float searchDivY = appHeight * 15 / paperHeight;
  float searchDivWidth = appWidth * 74 / paperWidth;
  float searchDivHeight = appHeight * 15 / paperHeight;

  //EXit DIV
  float exitDivX = appWidth * 193 / paperWidth;
  float exitDivY = appHeight * 3 / paperHeight;
  float exitDivWidth = appWidth * 20 / paperWidth;
  float exitDivHeight = appHeight * 13 / paperHeight;

  //Image DIV
  float imageDivX = appWidth * 20 / paperWidth;
  float imageDivY = appHeight * 50 / paperHeight;
  float imageDivWidth = appWidth * 175 / paperWidth;
  float imageDivHeight = appHeight * 101 / paperHeight;

  //Song Title DIV
  float songTitleDivX = appWidth * 20 / paperWidth;
  float songTitleDivY = appHeight * 180 / paperHeight;
  float songTitleDivWidth = appWidth * 145 / paperWidth;
  float songTitleDivHeight = appHeight * 15 / paperHeight;

  //Artist DIV
  float artistDivX = appWidth * 20 / paperWidth;
  float artistDivY = appHeight * 200 / paperHeight;
  float artistDivWidth = appWidth * 77 / paperWidth;
  float artistDivHeight = appHeight * 9 / paperHeight;

  //Progress Bar DIV
  float progressBarDivX = appWidth * 20 / paperWidth;
  float progressBarDivY = appHeight * 220 / paperHeight;
  float progressBarDivWidth = appWidth * 175 / paperWidth;
  float progressBarDivHeight = appHeight * 3 / paperHeight;

  //Modify DIV
  float modifyDivX = appWidth * 20 / paperWidth;
  float modifyDivY = appHeight * 260 / paperHeight;
  float modifyDivWidth = appWidth * 20 / paperWidth;
  float modifyDivHeight = appHeight * 10 / paperHeight;


  //
  //Text Setup, includes text & font variables
  //

  //
  //Literal Text ... String Variables
  String songTitle = "Swim";
  String artistName = "Chase Atlantic";
  String modifyText = "Modify";
  String searchText = "Search Lyric";
  String exitText = "X";

  //
  //Font Size Variables, corrleated with DIV-Height Variables
  float fontSize1 = songTitleDivHeight;
  float fontSize2 = artistDivHeight;
  float fontSize3 = modifyDivHeight;
  float fontSize4 = searchDivHeight;
  float fontSize5 = exitDivHeight;

  //
  //2D Music Symbol Variables
  //

  float buttonDivWidth = appWidth * 3.0/17.5;
  float buttonDivHeight = appHeight * 3.0/35.0;
  float buttonDivY = appHeight * 28.5/35.0;

  // Button X Positions
  float skipBackDivX = appWidth * 0.4/17.5;
  float rewindDivX = appWidth * 3.8/17.5;
  float pauseDivX = appWidth * 7.25/17.5;
  float fastForwardDivX = appWidth * 10.7/17.5;
  float skipForwardDivX = appWidth * 14.1/17.5;

  // Skip Back Symbol DIVs
  float skipBackBarDivX = skipBackDivX + buttonDivWidth * 1.0/6.0;
  float skipBackBarDivY = buttonDivY + buttonDivHeight * 1.0/5.0;
  float skipBackBarDivWidth = buttonDivWidth * 1.0/10.0;
  float skipBackBarDivHeight = buttonDivHeight * 3.0/5.0;

  float skipBackTriangleDivX1 = skipBackDivX + buttonDivWidth * 5.0/6.0;
  float skipBackTriangleDivY1 = buttonDivY + buttonDivHeight * 1.0/5.0;
  float skipBackTriangleDivX2 = skipBackDivX + buttonDivWidth * 1.0/3.0;
  float skipBackTriangleDivY2 = buttonDivY + buttonDivHeight * 1.0/2.0;
  float skipBackTriangleDivX3 = skipBackDivX + buttonDivWidth * 5.0/6.0;
  float skipBackTriangleDivY3 = buttonDivY + buttonDivHeight * 4.0/5.0;

  // Rewind Symbol DIVs
  float rewindTriangleDivX1 = rewindDivX + buttonDivWidth * 1.0/2.0;
  float rewindTriangleDivY1 = buttonDivY + buttonDivHeight * 1.0/5.0;
  float rewindTriangleDivX2 = rewindDivX + buttonDivWidth * 1.0/10.0;
  float rewindTriangleDivY2 = buttonDivY + buttonDivHeight * 1.0/2.0;
  float rewindTriangleDivX3 = rewindDivX + buttonDivWidth * 1.0/2.0;
  float rewindTriangleDivY3 = buttonDivY + buttonDivHeight * 4.0/5.0;

  float rewindTriangleDivX4 = rewindDivX + buttonDivWidth * 9.0/10.0;
  float rewindTriangleDivY4 = buttonDivY + buttonDivHeight * 1.0/5.0;
  float rewindTriangleDivX5 = rewindDivX + buttonDivWidth * 1.0/2.0;
  float rewindTriangleDivY5 = buttonDivY + buttonDivHeight * 1.0/2.0;
  float rewindTriangleDivX6 = rewindDivX + buttonDivWidth * 9.0/10.0;
  float rewindTriangleDivY6 = buttonDivY + buttonDivHeight * 4.0/5.0;

  // Pause Symbol DIVs
  float pauseBarDivX1 = pauseDivX + buttonDivWidth * 1.0/4.0;
  float pauseBarDivY1 = buttonDivY + buttonDivHeight * 1.0/5.0;
  float pauseBarDivWidth1 = buttonDivWidth * 1.0/6.0;
  float pauseBarDivHeight1 = buttonDivHeight * 3.0/5.0;

  float pauseBarDivX2 = pauseDivX + buttonDivWidth * 7.0/12.0;
  float pauseBarDivY2 = buttonDivY + buttonDivHeight * 1.0/5.0;
  float pauseBarDivWidth2 = buttonDivWidth * 1.0/6.0;
  float pauseBarDivHeight2 = buttonDivHeight * 3.0/5.0;

  // Fast Forward Symbol DIVs
  float fastForwardTriangleDivX1 = fastForwardDivX + buttonDivWidth * 1.0/10.0;
  float fastForwardTriangleDivY1 = buttonDivY + buttonDivHeight * 1.0/5.0;
  float fastForwardTriangleDivX2 = fastForwardDivX + buttonDivWidth * 1.0/2.0;
  float fastForwardTriangleDivY2 = buttonDivY + buttonDivHeight * 1.0/2.0;
  float fastForwardTriangleDivX3 = fastForwardDivX + buttonDivWidth * 1.0/10.0;
  float fastForwardTriangleDivY3 = buttonDivY + buttonDivHeight * 4.0/5.0;

  float fastForwardTriangleDivX4 = fastForwardDivX + buttonDivWidth * 1.0/2.0;
  float fastForwardTriangleDivY4 = buttonDivY + buttonDivHeight * 1.0/5.0;
  float fastForwardTriangleDivX5 = fastForwardDivX + buttonDivWidth * 9.0/10.0;
  float fastForwardTriangleDivY5 = buttonDivY + buttonDivHeight * 1.0/2.0;
  float fastForwardTriangleDivX6 = fastForwardDivX + buttonDivWidth * 1.0/2.0;
  float fastForwardTriangleDivY6 = buttonDivY + buttonDivHeight * 4.0/5.0;

  // Skip Forward Symbol DIVs
  float skipForwardTriangleDivX1 = skipForwardDivX + buttonDivWidth * 1.0/6.0;
  float skipForwardTriangleDivY1 = buttonDivY + buttonDivHeight * 1.0/5.0;
  float skipForwardTriangleDivX2 = skipForwardDivX + buttonDivWidth * 2.0/3.0;
  float skipForwardTriangleDivY2 = buttonDivY + buttonDivHeight * 1.0/2.0;
  float skipForwardTriangleDivX3 = skipForwardDivX + buttonDivWidth * 1.0/6.0;
  float skipForwardTriangleDivY3 = buttonDivY + buttonDivHeight * 4.0/5.0;

  float skipForwardBarDivX = skipForwardDivX + buttonDivWidth * 3.0/4.0;
  float skipForwardBarDivY = buttonDivY + buttonDivHeight * 1.0/5.0;
  float skipForwardBarDivWidth = buttonDivWidth * 1.0/10.0;
  float skipForwardBarDivHeight = buttonDivHeight * 3.0/5.0;
  //
  //Directory or Pathway to Images
  String upArrow = "..";
  String dependenciesFolder = "Dependencies";
  String imagesFolder = "Images";
  String imageName1 = "wp14072262";
  String fileExtension = ".jpg";
  String slash = "/";
  String imageDirectory = upArrow + slash + upArrow + slash + dependenciesFolder + slash + imagesFolder + slash;
  String pathway1 = imageDirectory + imageName1 + fileExtension;
  //
  //PImage Vars + Dimensions (width & height)
  image1 = loadImage(pathway1);
  println(pathway1);

  int imageWidth2 = 1920;
  int imageHeight2 = 1095;
  //
  //DIVs
  //
  rect(searchDivX, searchDivY, searchDivWidth, searchDivHeight);
  rect(exitDivX, exitDivY, exitDivWidth, exitDivHeight);
  rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(artistDivX, artistDivY, artistDivWidth, artistDivHeight);
  rect(progressBarDivX, progressBarDivY, progressBarDivWidth, progressBarDivHeight);
  rect(modifyDivX, modifyDivY, modifyDivWidth, modifyDivHeight);
  //
  //2D music Symbol Shapes, 2D shapes needed to draw
  //
  rect(skipBackDivX, buttonDivY, buttonDivWidth, buttonDivHeight);
  rect(rewindDivX, buttonDivY, buttonDivWidth, buttonDivHeight);
  rect(pauseDivX, buttonDivY, buttonDivWidth, buttonDivHeight);
  rect(fastForwardDivX, buttonDivY, buttonDivWidth, buttonDivHeight);
  rect(skipForwardDivX, buttonDivY, buttonDivWidth, buttonDivHeight);

  rect(skipBackBarDivX, skipBackBarDivY, skipBackBarDivWidth, skipBackBarDivHeight);
  triangle(skipBackTriangleDivX1, skipBackTriangleDivY1, skipBackTriangleDivX2, skipBackTriangleDivY2, skipBackTriangleDivX3, skipBackTriangleDivY3);

  triangle(rewindTriangleDivX1, rewindTriangleDivY1, rewindTriangleDivX2, rewindTriangleDivY2, rewindTriangleDivX3, rewindTriangleDivY3);
  triangle(rewindTriangleDivX4, rewindTriangleDivY4, rewindTriangleDivX5, rewindTriangleDivY5, rewindTriangleDivX6, rewindTriangleDivY6);

  rect(pauseBarDivX1, pauseBarDivY1, pauseBarDivWidth1, pauseBarDivHeight1);
  rect(pauseBarDivX2, pauseBarDivY2, pauseBarDivWidth2, pauseBarDivHeight2);

  triangle(fastForwardTriangleDivX1, fastForwardTriangleDivY1, fastForwardTriangleDivX2, fastForwardTriangleDivY2, fastForwardTriangleDivX3, fastForwardTriangleDivY3);
  triangle(fastForwardTriangleDivX4, fastForwardTriangleDivY4, fastForwardTriangleDivX5, fastForwardTriangleDivY5, fastForwardTriangleDivX6, fastForwardTriangleDivY6);

  triangle(skipForwardTriangleDivX1, skipForwardTriangleDivY1, skipForwardTriangleDivX2, skipForwardTriangleDivY2, skipForwardTriangleDivX3, skipForwardTriangleDivY3);
  rect(skipForwardBarDivX, skipForwardBarDivY, skipForwardBarDivWidth, skipForwardBarDivHeight);
  //
  //Drawing Text - Formatting Text Functions & Ink Variables
  color darkPurpleInk = #585062;

  PFont font;
  String centurySchoolbook = "Century Schoolbook";
  font = createFont(centurySchoolbook, fontSize1);

  fill(darkPurpleInk);
  textAlign(CENTER, CENTER);

  float constantDecrease = 0.99;
  int iWhile = 0;

  //
  //Drawing Text - Font Size Adustement (WHILE Loop)
  textFont(font, fontSize1);

  while ( textWidth(songTitle) > songTitleDivWidth ) {
    iWhile++;
    if ( iWhile > 10000 ) {
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  iWhile = 0;
  textFont(font, fontSize2);

  while ( textWidth(artistName) > artistDivWidth ) {
    iWhile++;
    if ( iWhile > 10000 ) {
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize2 *= constantDecrease;
    textFont(font, fontSize2);
  }
  iWhile = 0;
  textFont(font, fontSize3);

  while ( textWidth(modifyText) > modifyDivWidth ) {
    iWhile++;
    if ( iWhile > 10000 ) {
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize3 *= constantDecrease;
    textFont(font, fontSize3);
  }
  iWhile = 0;
  textFont(font, fontSize4);

  while ( textWidth(searchText) > searchDivWidth ) {
    iWhile++;
    if ( iWhile > 10000 ) {
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize4 *= constantDecrease;
    textFont(font, fontSize4);
  }
  iWhile = 0;
  textFont(font, fontSize5);

  while ( textWidth(exitText) > exitDivWidth ) {
    iWhile++;
    if ( iWhile > 10000 ) {
      println("Infinite WHILE Loop");
      exit();
    }
    fontSize5 *= constantDecrease;
    textFont(font, fontSize5);
  }
  //
  //Draw Text with adjusted DIV Variables
  textFont(font, fontSize1);
  text(songTitle, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);

  textFont(font, fontSize2);
  text(artistName, artistDivX, artistDivY, artistDivWidth, artistDivHeight);

  textFont(font, fontSize3);
  text(modifyText, modifyDivX, modifyDivY, modifyDivWidth, modifyDivHeight);

  textFont(font, fontSize4);
  text(searchText, searchDivX, searchDivY, searchDivWidth, searchDivHeight);

  textFont(font, fontSize5);
  text(exitText, exitDivX, exitDivY, exitDivWidth, exitDivHeight);

  //
  //Images & Aspect Ratio Algoritrhm, including WHILE Loop
  float image2AspectRatio_GreatOne = ( imageWidth2 > imageHeight2 ) ? float(imageWidth2) / float(imageHeight2) : float(imageHeight2) / float(imageWidth2);

  float imageWidthAdjusted2 = imageDivWidth;

  float imageHeightAdjusted1 = ( imageWidth2 >= imageDivWidth ) ? imageWidthAdjusted2 / image2AspectRatio_GreatOne : imageWidthAdjusted2 * image2AspectRatio_GreatOne;

  while ( imageHeightAdjusted1 > imageDivHeight ) {
    imageWidthAdjusted2 *= 0.99;
    imageHeightAdjusted1 = imageWidthAdjusted2 / image2AspectRatio_GreatOne;
  }
    image(
   image1,
   imageDivX + (imageDivWidth-imageWidthAdjusted2)/2,
   imageDivY + (imageDivHeight-imageHeightAdjusted1)/2,
   imageWidthAdjusted2,
   imageHeightAdjusted1
  );
}//End Setup

void draw() {
  //2D Music Symbol Changes: hoverover, activation. Boolean from mousePressed()
}//End Draw

void mousePressed() {
  //2D Music Symbol Changes: sending Boolean to draw()
}//End Mouse Pressed

void keyPressed() {
  //Key Board Short Cuts for Music Features, built from limited Minim Library Functions
}//End Key Pressed

//End MAIN Program
