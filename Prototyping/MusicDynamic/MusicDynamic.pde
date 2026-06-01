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

AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffect];

int currentSong = numberOfSongs - numberOfSongs;

float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
color darkPurple, resetInk;
float constantDecrease;
int iWhile;
float fontSize1, fontSize2, fontSize3;
PFont font;

void setup() {

//Display
size(700, 500);

int appWidth = width;
int appHeight = height;

//DIVs, Population
int numberOfButtons = 13;
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;

float quitX = appWidth - appHeight*1/20;
float quitY = 0;
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;

songTitleDivX = beginningButtonSpace;
songTitleDivY = appHeight*1.5/20;
songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
songTitleDivHeight = appHeight*1/10;

float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*1.5/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;

//DIV: rect()
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

String[] songName = new String[numberOfSongs];

songName[currentSong] = "Chase Atlantic - Swim";
currentSong = 0;

String soundEffect1 = "Wood_Door_Open_and_Close_Series";
String fileExtension_mp3 = ".mp3";

String musicDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + musicFolder + open;
String soundEffectsDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + soundEffectsFolder + open;

String pathway;

for (int i=0; i<numberOfSongs; i++) {


pathway = musicDirectory + songName[i] + fileExtension_mp3;

playList[i] = minim.loadFile(pathway);

playListMetaData[i] = playList[i].getMetaData();


}

pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;

soundEffects[currentSong] = minim.loadFile(pathway);

for (int i=0; i<numberOfSongs; i++) {


if (playList[i] == null) {

  println("The Play List did not load properly");
  printArray(playList);
  exit();
}


}

if (soundEffects[currentSong] == null) {


println("The Sound Effects did not load properly");
printArray(soundEffects);
exit();


}

//Fonts
fontSize1 = songTitleDivHeight;
fontSize2 = messageDIV_Height;
fontSize3 = quitHeight;

String century = "Century Schoolbook";

font = createFont(century, fontSize1);

darkPurple = #585062;
color whiteInk = #FFFFFF;

resetInk = whiteInk;

fill(darkPurple);

textAlign(CENTER, CENTER);

constantDecrease = 0.99;
iWhile = 0;

textFont(font, fontSize1);

while (textWidth(playListMetaData[currentSong].title()) > songTitleDivWidth) {


iWhile++;

if (iWhile > 10000) {

  println("Infinite WHILE Loop");
  exit();
}

fontSize1 *= constantDecrease;
textFont(font, fontSize1);


}

text(
playListMetaData[currentSong].title(),
songTitleDivX,
songTitleDivY,
songTitleDivWidth,
songTitleDivHeight
);

fill(resetInk);

textFont(font, quitHeight*0.8);
fill(darkPurple);
text("X", quitX, quitY, quitWidth, quitHeight);
fill(resetInk);
playList[currentSong].play();
}

void draw() {

rect(
songTitleDivX,
songTitleDivY,
songTitleDivWidth,
songTitleDivHeight
);

fontSize1 = songTitleDivHeight;

constantDecrease = 0.99;
iWhile = 0;

textFont(font, fontSize1);

while (textWidth(playListMetaData[currentSong].title()) > songTitleDivWidth) {


iWhile++;

if (iWhile > 10000) {

  println("Infinite WHILE Loop");
  exit();
}

fontSize1 *= constantDecrease;
textFont(font, fontSize1);


}

fill(darkPurple);

text(
playListMetaData[currentSong].title(),
songTitleDivX,
songTitleDivY,
songTitleDivWidth,
songTitleDivHeight
);

fill(resetInk);
}

void mousePressed() {
}

void keyPressed() {

if (key=='P' || key=='p') playList[currentSong].loop(0);

if (key=='O' || key=='o') {


if (playList[currentSong].isPlaying()) {

  playList[currentSong].pause();

} else {

  playList[currentSong].play();
}


}

if (key=='S' || key=='s') {


if (playList[currentSong].isPlaying()) {

  playList[currentSong].pause();

} else {

  playList[currentSong].rewind();
}


}

if (key=='L' || key=='l') playList[currentSong].loop(1);

if (key=='K' || key=='k') playList[currentSong].loop();

if (key=='F' || key=='f') playList[currentSong].skip(10000);

if (key=='R' || key=='r') playList[currentSong].skip(-10000);

if (key=='W' || key=='w') {

  if (playList[currentSong].isMuted()) {

    playList[currentSong].unmute();

  } else {

    playList[currentSong].mute();
  }
}

if (key == ESC) {
  key = 0;
  exit();
}

if (key=='Q' || key=='q') exit();

}
