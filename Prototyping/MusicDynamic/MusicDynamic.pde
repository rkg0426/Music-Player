//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; 
int numberOfSongs = 1; 
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ]; 
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ]; 
AudioPlayer[] soundEffects = new AudioPlayer [ numberOfSoundEffect ];
int currentSong = 0; 

void setup() {
  //Display
  size( 700, 500); 
  int appWidth = width; 
  int appHeight = height;

  // DIVs, Population (From Teacher Code)
  int numberOfButtons = 13; 
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  
  float quitX = appWidth - appHeight*1/20;
  float quitY = 0;
  float quitWidth = appHeight*1/20;
  float quitHeight = appHeight*1/20;
  
  float songTitleDivX = beginningButtonSpace;
  float songTitleDivY = appHeight*1.5/20;
  float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
  float songTitleDivHeight = appHeight*1/10;
  
  float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
  float messageDIV_Y = appHeight*1.5/20;
  float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
  float messageDIV_Height = appHeight*9/20;

  // DIV: rect()
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
  rect(quitX, quitY, quitWidth, quitHeight);

  //Music Loading
  minim = new Minim(this); 
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music"; 
  String soundEffectsFolder = "Sound Effects"; 
  String dependenciesFolder = "Dependencies"; 
  
  String songName1 = "Chase Atlantic - Swim";
  String soundEffect1 = "Wood_Door_Open_and_Close_Series";
  String fileExtension_mp3 = ".mp3";

  String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ; 
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ; 

  String pathway = musicDirectory + songName1 + fileExtension_mp3; 
  playList[ currentSong ] = minim.loadFile( pathway ); 
  
  if (playList[currentSong] != null) {
     playListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
  }

  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; 
  soundEffects[currentSong] = minim.loadFile( pathway ); 

  if ( playList[currentSong]==null || soundEffects[currentSong]==null ) {
    println("The Play List or Sound Effects did not load properly. Check your file paths!");
  } else {
    playList[currentSong].play();
  }

  // Fonts and Text
  float fontSize1 = songTitleDivHeight; 
  PFont font; 
  String century = "Century Schoolbook"; // Changed to Century Schoolbook
  font = createFont(century, fontSize1);
  
  color darkPurple = #585062; // Your specific color hex
  fill(darkPurple); 
  textAlign (CENTER, CENTER); 
  
  // Adding the "X" to the Quit Button
  textFont(font, quitHeight * 0.8);
  text("X", quitX, quitY, quitWidth, quitHeight);

  // Dynamic Text Scaling for Song Title
  float constantDecrease = 0.99;
  int iWhile = 0;
  textFont(font, fontSize1); 
  
  if (playListMetaData[currentSong] != null) {
    while ( textWidth(playListMetaData[currentSong].title()) > songTitleDivWidth ) {
      iWhile++;
      if ( iWhile > 10000 ) { 
        println("Infinite WHILE Loop");
        exit();
      }
      fontSize1 *= constantDecrease;
      textFont(font, fontSize1);
    }
    text( playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  }
}

void draw() {}
void mousePressed() {}
void keyPressed() {
  if ( key == 'q' || key == 'Q' ) exit();
}
