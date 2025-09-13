<?php
$servername = "localhost";
$username = "root";   // default in XAMPP
$password = "";       // default has no password
$dbname = "bharat_darshan";  // your database name

// Database connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Connection check
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query
$sql = "SELECT name, location, imageUrl FROM attractions";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Bharat Darshan</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f9f9f9;
      padding: 20px;
    }
    h1 {
      text-align: center;
      color: darkblue;
      margin-bottom: 30px;
    }
    .card {
      width: 250px;
      border: 1px solid #ccc;
      border-radius: 10px;
      margin: 15px;
      padding: 10px;
      float: left;
      text-align: center;
      box-shadow: 0 4px 6px rgba(0,0,0,0.1);
      background: white;
    }
    .card img {
      width: 100%;
      height: 150px;
      object-fit: cover;
      border-radius: 10px;
    }
    .card h2 {
      margin: 10px 0;
      font-size: 18px;
    }
    .card p {
      color: gray;
      font-size: 14px;
    }
    .container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
    }
  </style>
</head>
<body>
  <h1>🇮🇳 Bharat Darshan - Famous Attractions</h1>
  <div class="container">
    <?php
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<div class='card'>";
            echo "<img src='" . $row['imageUrl'] . "' alt='" . $row['name'] . "'>";
            echo "<h2>" . $row['name'] . "</h2>";
            echo "<p>" . $row['location'] . "</p>";
            echo "</div>";
        }
    } else {
        echo "No data found.";
    }
    $conn->close();
    ?>
  </div>
</body>
</html>