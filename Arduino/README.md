# Arduino <-> Browser Communication

First beta. You have three options to trigger an event through a browser:

- speechRecognitionStarted
- speechRecognitionProcessing
- speechRecognitionFinished

You can call each with the IP. You can change the IP in the beginning. Right now it's 192.168.1.100.

Example: http://192.168.1.100/?speechRecognitionStarted

Each event will be printed in the serial monitor, too.