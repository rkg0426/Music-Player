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
//
//
float buttonWidth = appWidth * 3.0/17.5;
float buttonHeight = appHeight * 3.0/35.0; 
float buttonY = appHeight * 25.0/35.0;
//
float skipBackDivX = appWidth * 0.4/17.5;
float rewindDivX = appWidth * 3.8/17.5;
float pauseDivX = appWidth * 7.25/17.5;
float ffDivX = appWidth * 10.7/17.5;
float skipForwardDivX = appWidth * 14.1/17.5;
//
// DIVs
//
// Button 1: Skip Back
rect( skipBackDivX, buttonY, buttonWidth, buttonHeight );
rect( skipBackDivX + buttonWidth*1/6, buttonY + buttonHeight*1/5, buttonWidth*1/10, buttonHeight*3/5 );
triangle( skipBackDivX + buttonWidth*5/6, buttonY + buttonHeight*1/5, skipBackDivX + buttonWidth*1/3, buttonY + buttonHeight*1/2, skipBackDivX + buttonWidth*5/6, buttonY + buttonHeight*4/5 );
//
// Button 2: Rewind
rect( rewindDivX, buttonY, buttonWidth, buttonHeight );
triangle( rewindDivX + buttonWidth*1/2, buttonY + buttonHeight*1/5, rewindDivX + buttonWidth*1/10, buttonY + buttonHeight*1/2, rewindDivX + buttonWidth*1/2, buttonY + buttonHeight*4/5 );
triangle( rewindDivX + buttonWidth*9/10, buttonY + buttonHeight*1/5, rewindDivX + buttonWidth*1/2, buttonY + buttonHeight*1/2, rewindDivX + buttonWidth*9/10, buttonY + buttonHeight*4/5 );
//
// Button 3: Pause
rect( pauseDivX, buttonY, buttonWidth, buttonHeight );
rect( pauseDivX + buttonWidth*1/4, buttonY + buttonHeight*1/5, buttonWidth*1/6, buttonHeight*3/5 );
rect( pauseDivX + buttonWidth*7/12, buttonY + buttonHeight*1/5, buttonWidth*1/6, buttonHeight*3/5 );
//
// Button 4: Fast Forward
rect( ffDivX, buttonY, buttonWidth, buttonHeight );
triangle( ffDivX + buttonWidth*1/10, buttonY + buttonHeight*1/5, ffDivX + buttonWidth*1/2, buttonY + buttonHeight*1/2, ffDivX + buttonWidth*1/10, buttonY + buttonHeight*4/5 );
triangle( ffDivX + buttonWidth*1/2, buttonY + buttonHeight*1/5, ffDivX + buttonWidth*9/10, buttonY + buttonHeight*1/2, ffDivX + buttonWidth*1/2, buttonY + buttonHeight*4/5 );
//
// Button 5: Skip Forward
rect( skipForwardDivX, buttonY, buttonWidth, buttonHeight );
triangle( skipForwardDivX + buttonWidth*1/6, buttonY + buttonHeight*1/5, skipForwardDivX + buttonWidth*2/3, buttonY + buttonHeight*1/2, skipForwardDivX + buttonWidth*1/6, buttonY + buttonHeight*4/5 );
rect( skipForwardDivX + buttonWidth*3/4, buttonY + buttonHeight*1/5, buttonWidth*1/10, buttonHeight*3/5 );
