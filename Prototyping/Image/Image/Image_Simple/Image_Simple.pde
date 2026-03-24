/* Aspect Ratio
*/
//
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
String upArrow = "..";
String dependenciesFolder = "Dependencies/";
String imagesFolder = "Images/";
String imageName = "ZiClJf-1920w";
String fileExtension = ".jpg";
String open = "/";
//
//Concatenation
//Note, Cut Out, See Absolute Pathway:
//See Relative Pathway: \Users\r.ghangas\Documents\GitHub\Music-Player\Dependencies\Images
String imageDirectory = upArrow + open + upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
String pathway1 = imageDirectory + imageName + fileExtension;
//String pathway2 = imageDirectory + imageName2 + fileExtension2;
//String pathway3 = imageDirectory + imageName3 + fileExtension3;
//println(pathway);
//
PImage image1 = loadImage( pathway1 );
//PImage image2 = loadImage( pathway2 );
//PImage image3 = loadImage( pathway3 );
//
//image(image1, 0, 0);
int imageWidth = 860;
int imageHeight = 529;
//image(image2, 0, 0);
//image(image3, 0, 0);
//
//Population: DIVs
int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float imageDivX = beginningButtonSpace;
float imageDivY = appHeight*4.5/20;
float imageDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
//
//Image: Aspect Ratio Algorithm
//println( float(imageWidth)/ float(imageHeight) );
//Ternary Operator for Aspect Ratio: Q: greatOne v lessOne
float imageAspectRation_GreatOne = ( imageWidth > imageHeight ) ? float(imageWidth) / float(imageHeight) : float(imageHeight) / float(imageWidth) ;
println("Verify Image Aspect Ratio Greater than One:", imageAspectRation_GreatOne>=1, "\tActual Number:", imageAspectRation_GreatOne);
float imageWidthAdjusted = imageDivWidth;
println("Comparison of imageHeight and divHeight:", imageHeight, imageDivHeight);
float imageHeightAdjusted1 = ( imageWidth >= imageDivWidth ) ? imageWidthAdjusted / imageAspectRation_GreatOne : imageWidthAdjusted * imageAspectRation_GreatOne ;
println("imageHeightAdjusted1", imageHeightAdjusted1);
println("Question: is this too big?", "\t\thint ... reposition image() above rect(div)");
// WHILE LOOP: decrease imageWidth to decrease the calculated imageHeight (% decrease within mutliplication assignment operator)
while ( imageHeightAdjusted1 > imageDivHeight ) {
  imageWidthAdjusted *= 0.99;
  imageHeightAdjusted1 = imageWidthAdjusted / imageAspectRation_GreatOne ; //CHANGE THIS
}//End WHILE
//
//CAUTION: might need to reposition rect(div) with image()
//DIV: Image
rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
//
image(image1, imageDivX, imageDivY, imageWidthAdjusted, imageHeightAdjusted1);
//image(image2, 0, 0) ;
//image(image3, 0, 0);
