//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;  //initates entire class
int numberOfSongs = 1; // Best Practice
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ]; // FIXED: 'L' is now capitalized
AudioPlayer[] soundEffects = new AudioPlayer [ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs; //Zero, Math Property
//
void setup() {
  //Display
  size( 700, 500); //width ??height
  //fullScreen();  //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this); //Manditory
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music/"; //Developer Specific
  String soundEffectsFolder = "Sound Effects"; // FIXED: Added the space you mentioned
  String dependenciesFolder = "Dependencies"; //Developer Specific
  String songName1 = "Chase Atlantic - Swim";
  String soundEffect1 = "Wood_Door_Open_and_Close_Series";
  String fileExtension_mp3 = ".mp3";
  //
  //Caution: Mistakes Below
  String musicDirectory = upArrow + open + upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open ; //Concatenation
  String soundEffectsDirectory = upArrow + open + upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open ; //Concatenation
  String pathway = musicDirectory + songName1 + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
  println(pathway);
  playList[ currentSong ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  println(pathway);
  soundEffects[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
    printArray(playList);
    printArray(soundEffects);
    /*
  println("Music Pathway", musicDirectory);
     println("Full Music File Pathway", file);
     */
  } else {
    playList[currentSong].play();
    printArray(playList);
  }
}//End Setup
//
void draw() {}//End Draw
//
void mousePressed() {}//End Mouse Pressed
//
void keyPressed() {}//End Key Pressed
//
//End MAIN Program
