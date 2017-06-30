<?php
 require_once('config.php'); 
 session_start();
 $city = $_SESSION['city'] ;

 @$r_id= $_POST['removeId'];
 @$r_type = $_POST['removeType'];
 if($r_type === 'customer')
 {
  $remove = $functs->removeFn($r_id);
 }
 
?>