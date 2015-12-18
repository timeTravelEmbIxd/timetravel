# instructions for the speech recognition

First of all: You need Chrome!
Second: For each recognition you need to reload the website!

1. Open the following link on Chrome: https://dennisbu.octans.uberspace.de/audio or start it on yur own local Web Server
  don't forget to import the "timetravel.sql" before into your MySQL Database
2. Open the console within Chrome by pressing "ctrl + shift + i" on Windows or "cmd + shift + i" on Mac and click on the tab "Console".
4. The speech recognition starts when you press the button. You can see this in the console: "recording..."
5. The system recognizes when you end: "Record stopped."
6. After that the system will upload the transcript and the whole record to the database.
7. If your speech contained one of the word patterns the system will show all related audio files.

Word patterns included:
- "love"
- "hate"

New patterns can be added in the database. Just ad the Word to the table "patterns".
