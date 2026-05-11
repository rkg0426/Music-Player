/* Music App, Final Project */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// --- Global Variables ---
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

void setup() {
  // Display Setup
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;

  // Population using unitless ratios
  float paperWidth = 216.0;
  float paperHeight = 279.0;

  // --- Calculations (Population) ---
  backX = appWidth * 10 / paperWidth;
  backY = appHeight * 3 / paperHeight;
  backW = appWidth * 20 / paperWidth;
  backH = appHeight * 13 / paperHeight;

  searchX = appWidth * (paperWidth - 74)/2 / paperWidth;
  searchY = appHeight * 15 / paperHeight;
  searchW = appWidth * 74 / paperWidth;
  searchH = appHeight * 15 / paperHeight;

  exitX = appWidth * (paperWidth - 23) / paperWidth;
  exitY = appHeight * 3 / paperHeight;
  exitW = appWidth * 20 / paperWidth;
  exitH = appHeight * 13 / paperHeight;

  imgX = appWidth * (paperWidth - 175)/2 / paperWidth;
  imgY = appHeight * 50 / paperHeight;
  imgW = appWidth * 175 / paperWidth;
  imgH = appHeight * 101 / paperHeight;

  songtitleX = imgX;
  songtitleY = appHeight * 180 / paperHeight;
  songtitleW = appWidth * 145 / paperWidth;
  songtitleH = appHeight * 15 / paperHeight;

  artistX = imgX;
  artistY = appHeight * 200 / paperHeight;
  artistW = appWidth * 77 / paperWidth;
  artistH = appHeight * 9 / paperHeight;

  icon2X = appWidth * (paperWidth - 30) / paperWidth;
  icon2Y = appHeight * 180 / paperHeight;
  icon2W = appWidth * 11 / paperWidth;
  icon2H = appHeight * 11 / paperHeight;

  icon3X = appWidth * (paperWidth - 30) / paperWidth;
  icon3Y = appHeight * 200 / paperHeight;
  icon3W = appWidth * 11 / paperWidth;
  icon3H = appHeight * 11 / paperHeight;

  progX = imgX;
  progY = appHeight * 220 / paperHeight;
  progW = appWidth * 175 / paperWidth;
  progH = appHeight * 3 / paperHeight;

  bW = appWidth * 20 / paperWidth; 
  bH = appHeight * 18 / paperHeight; 
  bY = appHeight * 230 / paperHeight; 
  bG = appWidth * 8 / paperWidth;
  
  modifyX = imgX;
  modifyY = appHeight * 260 / paperHeight;
  modifyW = appWidth * 20 / paperWidth;
  modifyH = appHeight * 10 / paperHeight;

  speedX = appWidth * (paperWidth - 91)/2 / paperWidth;
  speedY = appHeight * 320 / paperHeight;
  speedW = appWidth * 91 / paperWidth;
  speedH = appHeight * 10 / paperHeight;
  
  startX = imgX + (progW - (5*bW + 4*bG))/2;

  // --- Drawing DIVs ---
  rect(backX, backY, backW, backH);
  rect(searchX, searchY, searchW, searchH);
  rect(exitX, exitY, exitW, exitH);
  rect(imgX, imgY, imgW, imgH);
  rect(songtitleX, songtitleY, songtitleW, songtitleH);
  rect(artistX, artistY, artistW, artistH);
  rect(icon2X, icon2Y, icon2W, icon2H);
  rect(icon3X, icon3Y, icon3W, icon3H);
  rect(progX, progY, progW, progH);

  // Music Control Buttons
  rect(startX, bY, bW, bH);
  rect(startX+(bW+bG), bY, bW, bH);
  rect(startX+2*(bW+bG), bY, bW, bH);
  rect(startX+3*(bW+bG), bY, bW, bH);
  rect(startX+4*(bW+bG), bY, bW, bH);

  rect(modifyX, modifyY, modifyW, modifyH);
  rect(speedX, speedY, speedW, speedH);
}

void draw() {
}

void mousePressed() {
}

void keyPressed() {
}
