/* DIVs 2D Rectangles 
*/

// Display Setup
fullScreen();
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

// Population using unitless ratios
float paperWidth = 216.0; 
float paperHeight = 279.0;

// --- DIVS ---
float backX = appWidth * 10 / paperWidth;
float backY = appHeight * 3 / paperHeight;
float backW = appWidth * 20 / paperWidth;
float backH = appHeight * 13 / paperHeight;

float searchX = appWidth * (paperWidth - 74)/2 / paperWidth; 
float searchY = appHeight * 15 / paperHeight;
float searchW = appWidth * 74 / paperWidth;
float searchH = appHeight * 15 / paperHeight;

float exitX = appWidth * (paperWidth - 23) / paperWidth;
float exitY = appHeight * 3 / paperHeight;
float exitW = appWidth * 20 / paperWidth;
float exitH = appHeight * 13 / paperHeight;

float imgX = appWidth * (paperWidth - 175)/2 / paperWidth; 
float imgY = appHeight * 50 / paperHeight;
float imgW = appWidth * 175 / paperWidth;
float imgH = appHeight * 101 / paperHeight;

float titleX = imgX; 
float titleY = appHeight * 180 / paperHeight;
float titleW = appWidth * 145 / paperWidth;
float titleH = appHeight * 15 / paperHeight;

float artistX = imgX; 
float artistY = appHeight * 200 / paperHeight;
float artistW = appWidth * 77 / paperWidth;
float artistH = appHeight * 9 / paperHeight;

float icon2X = appWidth * (paperWidth - 30) / paperWidth;
float icon2Y = appHeight * 180 / paperHeight;
float icon2W = appWidth * 11 / paperWidth;
float icon2H = appHeight * 11 / paperHeight;

float icon3X = appWidth * (paperWidth - 30) / paperWidth;
float icon3Y = appHeight * 200 / paperHeight;
float icon3W = appWidth * 11 / paperWidth;
float icon3H = appHeight * 11 / paperHeight;

float progX = imgX; 
float progY = appHeight * 220 / paperHeight;
float progW = appWidth * 175 / paperWidth;
float progH = appHeight * 3 / paperHeight;

float bW = appWidth * 20 / paperWidth, bH = appHeight * 18 / paperHeight, bY = appHeight * 230 / paperHeight, bG = appWidth * 8 / paperWidth;
float modifyX = imgX; 
float modifyY = appHeight * 260 / paperHeight; 
float modifyW = appWidth * 20 / paperWidth;
float modifyH = appHeight * 10 / paperHeight;

float speedX = appWidth * (paperWidth - 91)/2 / paperWidth;
float speedY = appHeight * 320 / paperHeight;
float speedW = appWidth * 91 / paperWidth;
float speedH = appHeight * 10 / paperHeight;

//
rect(backX, backY, backW, backH);
rect(searchX, searchY, searchW, searchH);
rect(exitX, exitY, exitW, exitH);
rect(imgX, imgY, imgW, imgH);
rect(titleX, titleY, titleW, titleH);
rect(artistX, artistY, artistW, artistH);
rect(icon2X, icon2Y, icon2W, icon2H);
rect(icon3X, icon3Y, icon3W, icon3H);
rect(progX, progY, progW, progH);

// 
float startX = imgX + (progW - (5*bW + 4*bG))/2; rect(startX, bY, bW, bH); rect(startX+(bW+bG), bY, bW, bH); rect(startX+2*(bW+bG), bY, bW, bH); rect(startX+3*(bW+bG), bY, bW, bH); rect(startX+4*(bW+bG), bY, bW, bH);

rect(modifyX, modifyY, modifyW, modifyH); 

rect(speedX, speedY, speedW, speedH);
