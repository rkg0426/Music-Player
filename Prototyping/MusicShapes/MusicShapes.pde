/* Music Player Layout - Custom Measurements */
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

// Base Ratios based on your 17.5cm width and ~35cm total height
float baseW = 17.5;
float baseH = 35.0; 

// --- MAIN IMAGE BOX ---
// Measurement: 17.5cm wide, 10.1cm tall, starts at Y=50 (5.0cm)
float imgX = appWidth * 0/baseW;
float imgY = appHeight * 5.0/baseH;
float imgW = appWidth * 17.5/baseW;
float imgH = appHeight * 10.1/baseH;

// --- CONTROLS SECTION (The 5 Rectangles at Y=250 / 25.0cm) ---
// Each is 2.4cm wide, 1.3cm tall
float ctrlY = appHeight * 25.0/baseH;
float ctrlW = appWidth * 2.4/baseW;
float ctrlH = appHeight * 1.3/baseH;

// X-Positions for the 5 buttons (approximate spacing based on your drawing)
float btn1X = appWidth * 0.5/baseW;
float btn2X = appWidth * 4.0/baseW;
float btn3X = appWidth * 7.5/baseW; // Center Button (Play/Pause)
float btn4X = appWidth * 11.0/baseW;
float btn5X = appWidth * 14.5/baseW;

// --- SHAPES MATH ---

// 1. STOP SYMBOL (Inside Button 1)
// A square inside the control box
float stopMargin = ctrlW * 0.2;
float stopX = btn1X + stopMargin;
float stopY = ctrlY + stopMargin;
float stopSize = ctrlW - (stopMargin * 2);

// 2. PLAY SYMBOL (Inside Button 3 - Center)
// Triangle coordinates relative to the 3rd button
float playX1 = btn3X + (ctrlW * 0.25);
float playY1 = ctrlY + (ctrlH * 0.2);
float playX2 = btn3X + (ctrlW * 0.8);
float playY2 = ctrlY + (ctrlH * 0.5);
float playX3 = btn3X + (ctrlW * 0.25);
float playY3 = ctrlY + (ctrlH * 0.8);

// 3. PAUSE SYMBOL (Inside Button 3 - Alternate)
float pauseBarW = ctrlW * 0.15;
float pauseX1 = btn3X + (ctrlW * 0.3);
float pauseX2 = btn3X + (ctrlW * 0.55);
float pauseH = ctrlH * 0.6;
float pauseY = ctrlY + (ctrlH * 0.2);

// --- DRAWING ---

// Main Image
rect(imgX, imgY, imgW, imgH);

// Draw the 5 Control Boxes
rect(btn1X, ctrlY, ctrlW, ctrlH);
rect(btn2X, ctrlY, ctrlW, ctrlH);
rect(btn3X, ctrlY, ctrlW, ctrlH); // Play/Pause container
rect(btn4X, ctrlY, ctrlW, ctrlH);
rect(btn5X, ctrlY, ctrlW, ctrlH);

// Draw the Symbols
// Stop
rect(stopX, stopY, stopSize, stopSize);

// Play
triangle(playX1, playY1, playX2, playY2, playX3, playY3);

// Pause (Two bars)
rect(pauseX1, pauseY, pauseBarW, pauseH);
rect(pauseX2, pauseY, pauseBarW, pauseH);
