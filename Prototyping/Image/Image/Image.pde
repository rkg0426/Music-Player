/* Aspect Ratio
*/
//
//Display
fullScreen();
//
String[] imageName = new String[3];
String upArrow = "..";
String dependenciesFolder = "Dependencies/";
String imagesFolder = "Images/";
imageName[1] = "ZiClJf-1920w";
imageName[2] = "sunflower_yellow_flowers_215332";
imageName[3] = "baby-duck-lossy";
String fileExtension1 = ".jpg";
String fileExtension2 = ".jpg";
String fileExtension3 = ".jpeg";
String open = "/";

//
//Concatenation
//Note, Cut Out, 
//See Relative Pathway: Dependencies\Images
String imageDirectory = upArrow + open + upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open + imageName + fileExtension;
String[] pathway = new String[3];
//
//Loading Images
PImage[] image = new PImage[3];
for ( int i=1; i<=pathway.length; i++ ) {
  pathway[i] = imageDirectory + imageName[1] + fileExtension
  image[i] = loadImage ( pathway[1] );
}
//
//Drawing Images
for ( int i=1; i<=pathway. length; i++ ) {
  image(image[i], 0, 0);
}
//
//End
