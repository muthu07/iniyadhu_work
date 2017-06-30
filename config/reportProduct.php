<?php
 require_once('config.php'); 
 session_start();
  $city = $_SESSION['city'] ;
  @$p_id = $_POST['p_id'];
  

  $productGeneralDetail = $functs->productGeneralDetailFn($p_id);
  $productCount  = $functs->productCountFn($p_id);
  $MappedHistory = $functs->MappedHistoryFn($p_id);

  
 

  

  $output = [];
  $output["general"]            = $productGeneralDetail;
  $output["productCount"]       = $productCount;
  $output["MappedHistory"]     = $MappedHistory;

  echo json_encode($output);
 
?>