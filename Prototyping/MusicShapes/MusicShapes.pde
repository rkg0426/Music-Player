/* DIVs 2D Rectangles, Assignment
 - Recreate the music symbols you want in the single box
 - This creates a library of variables and 2D Shapes
 
 - In the future
 - An array will demonstrate a simple alpha-numeric naming system
 - Developer will create a legend for index #
 - Developer will program each section
 - Sections may be overlapping
 
 ** Note: no sections will be overlapping here
 */
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

// Population using unitless ratios
float buttonDivWidth = appWidth * 3.0/17.5;
float buttonDivHeight = appHeight * 3.0/35.0;
float buttonDivY = appHeight * 25.0/35.0;

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

// DIVs (Drawing the outer boxes)
rect( skipBackDivX, buttonDivY, buttonDivWidth, buttonDivHeight );
rect( rewindDivX, buttonDivY, buttonDivWidth, buttonDivHeight );
rect( pauseDivX, buttonDivY, buttonDivWidth, buttonDivHeight );
rect( fastForwardDivX, buttonDivY, buttonDivWidth, buttonDivHeight );
rect( skipForwardDivX, buttonDivY, buttonDivWidth, buttonDivHeight );

// Drawing the inner music symbols
rect( skipBackBarDivX, skipBackBarDivY, skipBackBarDivWidth, skipBackBarDivHeight );
triangle( skipBackTriangleDivX1, skipBackTriangleDivY1, skipBackTriangleDivX2, skipBackTriangleDivY2, skipBackTriangleDivX3, skipBackTriangleDivY3 );

triangle( rewindTriangleDivX1, rewindTriangleDivY1, rewindTriangleDivX2, rewindTriangleDivY2, rewindTriangleDivX3, rewindTriangleDivY3 );
triangle( rewindTriangleDivX4, rewindTriangleDivY4, rewindTriangleDivX5, rewindTriangleDivY5, rewindTriangleDivX6, rewindTriangleDivY6 );

rect( pauseBarDivX1, pauseBarDivY1, pauseBarDivWidth1, pauseBarDivHeight1 );
rect( pauseBarDivX2, pauseBarDivY2, pauseBarDivWidth2, pauseBarDivHeight2 );

triangle( fastForwardTriangleDivX1, fastForwardTriangleDivY1, fastForwardTriangleDivX2, fastForwardTriangleDivY2, fastForwardTriangleDivX3, fastForwardTriangleDivY3 );
triangle( fastForwardTriangleDivX4, fastForwardTriangleDivY4, fastForwardTriangleDivX5, fastForwardTriangleDivY5, fastForwardTriangleDivX6, fastForwardTriangleDivY6 );

triangle( skipForwardTriangleDivX1, skipForwardTriangleDivY1, skipForwardTriangleDivX2, skipForwardTriangleDivY2, skipForwardTriangleDivX3, skipForwardTriangleDivY3 );
rect( skipForwardBarDivX, skipForwardBarDivY, skipForwardBarDivWidth, skipForwardBarDivHeight );
