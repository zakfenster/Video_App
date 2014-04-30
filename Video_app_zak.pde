
import controlP5.*;
import processing.video.*;

int knobValue = 100;
Movie main;
Movie movie;
Movie movie2, movie3;
PImage image;
ControlP5 cp5;
int myColor  = color(0, 0, 0);
float maino=10;
float maino2=0;
Knob myKnobA,myKnobB,myKnobC,myKnobE,myKnobF,myKnobG;
int selMode = REPLACE;
String name = "REPLACE";
int r1,r2,g1,g2,b1,b2;


void setup() {
  image= loadImage("scanlines.jpg");
  size(1440, 860);
  cp5 = new ControlP5(this);
  movie = new Movie(this, "Clouds_8.mov");
  movie.loop();
  main = new Movie(this, "Forest.mov");
  main.loop();
  frameRate(12);
  cp5.addSlider("slider")
    .setPosition(600, 550)
      .setRange(0, 255)
        .setValue(maino);
  ;

  myKnobA = cp5.addKnob("Red")
    .setRange(0, 255)
      .setValue(50)
        .setPosition(1200, 600)
          .setRadius(25)
            .setDragDirection(Knob.VERTICAL)
              ;
              
              
               myKnobB = cp5.addKnob("Blue")
    .setRange(0, 255)
      .setValue(50)
        .setPosition(1250, 600)
          .setRadius(25)
            .setDragDirection(Knob.VERTICAL)
              ;
              
              
               myKnobC = cp5.addKnob("Green")
    .setRange(0, 255)
      .setValue(50)
        .setPosition(1300, 600)
          .setRadius(25)
            .setDragDirection(Knob.VERTICAL)
              ;
              
               myKnobE = cp5.addKnob("Red 2")
    .setRange(0, 255)
      .setValue(50)
        .setPosition(250, 600)
          .setRadius(25)
            .setDragDirection(Knob.VERTICAL)
              ;
              
              
               myKnobF = cp5.addKnob("Blue 2")
    .setRange(0, 255)
      .setValue(50)
        .setPosition(300, 600)
          .setRadius(25)
            .setDragDirection(Knob.VERTICAL)
              ;
              
              
               myKnobG = cp5.addKnob("Green 2")
    .setRange(0, 255)
      .setValue(50)
        .setPosition(350, 600)
          .setRadius(25)
            .setDragDirection(Knob.VERTICAL)
              ;
}
//void fileSelected(File selection) {
//  if (selection == null) {
//    println("Window was closed or the user hit cancel.");
//  } else {
//    println("User selected " + selection.getAbsolutePath());
//    
//  }
//}
void movieEvent(Movie m) {
  m.read();
}

void draw() {
 // background(255, 31, 207);
 noTint();
  image(image, 0,0);
  mousePressed();
  if (movie.available() == true) {
    movie.read();
  }
  tint(r1, random(255), random(255), maino);
  
  image(main, 500, 10, 400, 400);
  tint(r2, random(255), random(255), 255-maino);
  image(movie, 500, 10, 400, 400);
  tint(r1, random(255), random(255));
  image(main, 940, 10, 400, 400);
  tint(r2, random(255), random(255));
  image(movie, 10, 10, 400, 400);
  //noTint();
  //rect(400,400,maino2,50,maino2);
  textSize(69);
  text("FILE CHOOSER", 10, 550);
  text("Effects", 1150, 550);
  textSize(20);
}
void slider(float opacity) {
  myColor = color(opacity);
  maino=opacity;
  maino2=255-opacity;
}

void knob(int theValue) {
  r1 = theValue;
  println("a knob event. setting background to "+theValue);
}

