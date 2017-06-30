<?php
 require_once('config.php'); 
 session_start();
  $city = $_SESSION['city'] ;
  @$id = $_POST['id'];
  $productList = $functs->getProductParVariantFn($id);
  



echo json_encode($productList);
 
?>