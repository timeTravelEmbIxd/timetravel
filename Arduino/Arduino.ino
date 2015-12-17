#include <SPI.h>
#include <Ethernet.h>

/*
TIME TRAVEL
Arduino as a Web Server to enable the Communication with a Browser
Notes: Ethernet shield uses pins 10, 11, 12, 13
 */

byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };  // if need to change the MAC address (Very Rare)
IPAddress ip(192, 168, 1, 100);
EthernetServer server(80);
boolean reading = false;


void setup(){
  Serial.begin(9600);
  while (!Serial) { ; // wait for serial port to connect. Needed for native USB port only }
  Ethernet.begin(mac, ip);
  server.begin();
  Serial.print("Server is at ");
  Serial.println(Ethernet.localIP());
}

void loop(){
  checkForClient();  // listen for incoming clients, and process qequest.
}

void checkForClient(){
  EthernetClient client = server.available();  // listen for incoming clients
  if (client) {

    // an http request ends with a blank line
    boolean currentLineIsBlank = true;
    boolean sentHeader = false;

    while (client.connected()) {
      if (client.available()) {

        if(!sentHeader){
          // send a standard http response header
          client.println("HTTP/1.1 200 OK");
          client.println("Content-Type: text/html");
          client.println();
          sentHeader = true;
        }

        char c = client.read();

        if(reading && c == ' ') reading = false;
        if(c == '?') reading = true; //found the ?, begin reading the info

        if(reading){
           switch (c) {
            case 'speechRecognitionStarted':  // triggered when Speech Recognition started
              speechRecognitionStarted();
              break;
            case 'speechRecognitionProcessing':  // triggered when Speech Recognition is being processed
              speechRecognitionProcessing(); 
              break;
            case 'speechRecognitionFinished':  // triggered when Speech Recognition is finished
              speechRecognitionFinished(); 
              break;
          }
        }

        if (c == '\n' && currentLineIsBlank)  break;
        if (c == '\n') currentLineIsBlank = true;
        else if (c != '\r') currentLineIsBlank = false;

      }
    }
    delay(1); // give the web browser time to receive the data
    client.stop(); // close the connection:
    Ethernet.maintain();
  } 

}

void speechRecognitionStarted() {
  Serial.println("Speech Recognition started.");
}

void speechRecognitionProcessing() {
  Serial.println("Speech Recognition is being processed.");
}

void speechRecognitionFinished() {
  Serial.println("Speech Recognition is finished.");
}
