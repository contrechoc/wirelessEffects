import processing.serial.*;

// The serial port:
Serial myPort;

int testCounter = 0;

long timer;
long timerInterval = 200;

int oldCode = 0;

PFont f;

void setup() {
  size(500, 500);
  background(255);

  // List all the available serial ports:
  println(Serial.list());

  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[0], 9600);

  //test
  myPort.write("#" + 5  + "                                       ");//40 chars please!!!

  f = createFont("Monospaced", 24);
  textFont(f);
  textAlign(LEFT, CENTER);
  
  fill(0,0,255);
  text("wireless effects", 20,50);
  text("the jeenode should be connected", 20,100);
  
  text("hand mode: arrows on keyboard", 20,200);
  text("mobile mode: buttons in app", 20,250);
}

void draw() {


  if ( keyPressed&& timer<millis() ) {
    if ((key == 'q') || (key == 'Q') || (keyCode == UP)|| (keyCode == LEFT)) {
      String[] feed = loadStrings("http://www.contrechoc.com/exovest/setLED0.php");
      sendCode();
    }
    if ((key == 'a') || (key == 'A')|| (keyCode == DOWN)|| (keyCode == RIGHT)) {
      String[] feed = loadStrings("http://www.contrechoc.com/exovest/setLED1.php");
      sendCode();
    }
    if (key == 'b' || key == 'B') {
      sendCode();
    }
    timer = millis() + timerInterval;
  }

  if ( timer<millis() ) {
    timer = millis() + timerInterval;
    sendCode();
  }
}

void sendCode() {
  String[] feed = loadStrings("http://www.contrechoc.com/exovest/checkStatusLED.php");
  // println ("3 " + feed[3] + " " + feed[3].charAt(1) + " " + testCounter);
  char myCode = feed[3].charAt(1);

  if ( oldCode != myCode) {
    myPort.write("#" + myCode  + "                                       ");//40 chars please!!!

    oldCode = myCode;
    println ("code change " + myCode );
  }
}

