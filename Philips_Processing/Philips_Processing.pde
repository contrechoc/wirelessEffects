import processing.serial.*;

// The serial port:
Serial myPort;

int testCounter = 0;

long timer;
long timerInterval = 200;

int oldCode = 0;

void setup() {

  // List all the available serial ports:
  println(Serial.list());

  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[0], 9600);
  
  //test
    myPort.write("#" + 5  + "                                       ");//40 chars please!!!
    
}

void draw() {


  if ( keyPressed&& timer<millis() ) {
    if (key == 'q' || key == 'Q') {
      String[] feed = loadStrings("http://www.contrechoc.com/exovest/setLED0.php");
       sendCode();
    }
    if (key == 'a' || key == 'A') {
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

