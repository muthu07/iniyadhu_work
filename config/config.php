<?php

/**
 * config.php
 * Displays some examples of class.db.php usage
 **/

define('DB_HOST', 'localhost'); // set database host
define('DB_USER', 'root'); // set database user
define('DB_PASS', ''); // set database password
define('DB_NAME', 'payrentz'); // set database name
define('SEND_ERRORS_TO', 'mailformuthu07@gmail.com'); //set email notification email address
define('DISPLAY_DEBUG', true); //display db errors?

$homepath="";

require_once('class.db.php');
$database = new DB();
require_once('functs.php');
$functs = new Functions();

?>