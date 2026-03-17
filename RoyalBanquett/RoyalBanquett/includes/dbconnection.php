<?php 
// DB credentials.
define('DB_HOST', 'localhost');
define('DB_USER', 'postgres'); 
define('DB_PASS', '1234'); 
define('DB_NAME', 'royaldb'); 
define('DB_PORT', '5432'); 

// Establish database connection.
try {
    $dbh = new PDO("pgsql:host=".DB_HOST.";port=".DB_PORT.";dbname=".DB_NAME, DB_USER, DB_PASS, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, 
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC

    ]);
    // echo "successfull".DB_NAME;
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}
?>
