<?php
header('Content-type: application/json; charset=utf-8');

// Database Login 
$dbhost = 'localhost';
$dbuser = 'timetravel';
$dbpass = 'QaAArnh3G6MVQxxG';
$dbName = 'timetravel_v1';


// pull the raw binary data from the POST array
$data = substr($_POST['data'], strpos($_POST['data'], ",") + 1);
$transcript = $_POST['transcript'];
$transcript = str_replace("'", "", $transcript);
$date = date('m-d-Y_h-i-s');

// decode it
$decodedData = base64_decode($data);
  
// write the data out to the file
$path = 'files/';
$filename = 'audio_'.$date.'.wav';
$fp = fopen($path.$filename, 'wb');
$fwrite = fwrite($fp, $decodedData);
  if ($fwrite === FALSE) { /*echo "Upload: ERROR with uploading the file.";*/ }
  else { /*echo "Upload: Successfully transferred ".$filename."\n";*/ }
fclose($fp);


// Finally create entries in database

// Open connection to Database
$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbName);

// Save record
$sql_record = "INSERT INTO records (file, transcript) VALUES ('$filename', '$transcript')";
if ($con->query($sql_record) === TRUE) { /*echo "Database: New record created successfully.";*/ }
else { /*echo "Error: " . $sql . "<br>" . $con->error;*/ }

$id_record = $con->insert_id;

$sql = "SELECT pattern FROM patterns";
$result = $con->query($sql);
  
  if ($result->num_rows > 0) {
      while($r = $result->fetch_assoc()) {
        
        // Save each pattern in a var
        $pattern = $r["pattern"];
        
        // Search transcript for pattern
        if (strpos($transcript, $pattern) !== false) {
  
          // If Match found: 
          // 1. Save new Match
          $sql_match = "INSERT INTO matches (id_record, id_pattern) VALUES ('$id_record', '$pattern')";
  if ($con->query($sql_match) === TRUE) { /*echo "\n Match registered: ".$pattern."\n"; */}
          
          // 2. Get old Matches
          $sql = "SELECT file FROM matches JOIN records ON matches.id_record = records.id WHERE matches.id_pattern = '".mysql_real_escape_string($pattern)."'";
          $result = $con->query($sql);

          // 3. Create array for Result
          if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                $obj[] = $row;
              }
          }

          // 4. Return Result as JSON
          print json_encode($obj, JSON_FORCE_OBJECT, JSON_UNESCAPED_SLASHES);
        }
      }
  }

// Close Connection to Database
$con->close();

?>