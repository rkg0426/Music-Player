/* Aspect Ratio
*/
//
//Display
fullScreen();
//
String upArrow = "..";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String open = "/";
String imageName1 = "ZiClJf-1920w";
String imageName2 = "sunflower_yellow_flowers_215332";
String imageName3 = "Mountains";
String fileExtension1 = ".jpg";
String fileExtension2 = ".jpg";
String fileExtension3 = ".jpg";
// Folder path only
String imageDirectory = upArrow + open + upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
String pathway1 = imageDirectory + imageName1 + fileExtension1;
String pathway2 = imageDirectory + imageName2 + fileExtension2;
String pathway3 = imageDirectory + imageName3 + fileExtension3;
//
PImage image1 = loadImage(pathway1);
PImage image2 = loadImage(pathway2);
PImage image3 = loadImage(pathway3);
//
image(image1, 0, 0);
image(image2, 0, 0);
image(image3, 0, 0);
