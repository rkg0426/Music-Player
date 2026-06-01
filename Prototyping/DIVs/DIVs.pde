/* DIVs 2D Rectangles 
*/

println(displayWidth, displayHeight);
fullScreen();

int appWidth = displayWidth;
int appHeight = displayHeight;

// Population using unitless ratios
int paperWidth = 216;
int paperHeight = 279;

// --- BACKGROUND DIV ---
float backDivX = appWidth * 10 / paperWidth;
float backDivY = appHeight * 3 / paperHeight;
float backDivWidth = appWidth * 20 / paperWidth;
float backDivHeight = appHeight * 13 / paperHeight;

// --- SEARCH DIV ---
float searchDivX = appWidth * 71 / paperWidth; 
float searchDivY = appHeight * 15 / paperHeight;
float searchDivWidth = appWidth * 74 / paperWidth;
float searchDivHeight = appHeight * 15 / paperHeight;

// --- EXIT DIV ---
float exitDivX = appWidth * 193 / paperWidth; 
float exitDivY = appHeight * 3 / paperHeight;
float exitDivWidth = appWidth * 20 / paperWidth;
float exitDivHeight = appHeight * 13 / paperHeight;

// --- IMAGE DIV ---
float imageDivX = appWidth * 20 / paperWidth; 
float imageDivY = appHeight * 50 / paperHeight;
float imageDivWidth = appWidth * 175 / paperWidth;
float imageDivHeight = appHeight * 101 / paperHeight;

// --- SONG TITLE DIV ---
float songTitleDivX = appWidth * 20 / paperWidth; 
float songTitleDivY = appHeight * 180 / paperHeight;
float songTitleDivWidth = appWidth * 145 / paperWidth;
float songTitleDivHeight = appHeight * 15 / paperHeight;

// --- ARTIST DIV ---
float artistDivX = appWidth * 20 / paperWidth; 
float artistDivY = appHeight * 200 / paperHeight;
float artistDivWidth = appWidth * 77 / paperWidth;
float artistDivHeight = appHeight * 9 / paperHeight;

// --- PROGRESS BAR DIV ---
float progressBarDivX = appWidth * 20 / paperWidth; 
float progressBarDivY = appHeight * 220 / paperHeight;
float progressBarDivWidth = appWidth * 175 / paperWidth;
float progressBarDivHeight = appHeight * 3 / paperHeight;

// --- MODIFY DIV ---
float modifyDivX = appWidth * 20 / paperWidth; 
float modifyDivY = appHeight * 260 / paperHeight;
float modifyDivWidth = appWidth * 20 / paperWidth;
float modifyDivHeight = appHeight * 10 / paperHeight;

// --- SPEED DIV ---
float speedDivX = appWidth * 62 / paperWidth; 
float speedDivY = appHeight * 320 / paperHeight;
float speedDivWidth = appWidth * 91 / paperWidth;
float speedDivHeight = appHeight * 10 / paperHeight;

// --- DRAWING DIVs ---
rect(backDivX, backDivY, backDivWidth, backDivHeight);
rect(searchDivX, searchDivY, searchDivWidth, searchDivHeight);
rect(exitDivX, exitDivY, exitDivWidth, exitDivHeight);
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(artistDivX, artistDivY, artistDivWidth, artistDivHeight);
rect(progressBarDivX, progressBarDivY, progressBarDivWidth, progressBarDivHeight);
rect(modifyDivX, modifyDivY, modifyDivWidth, modifyDivHeight);
rect(speedDivX, speedDivY, speedDivWidth, speedDivHeight);
