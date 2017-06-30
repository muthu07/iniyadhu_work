<?php

require_once('config.php'); 
 session_start();
 @$type = $_POST['type'];
 @$year = $_POST['year'];
 if($type == 'gen'){

   $getreportYear = $functs->getreportYearfn($year);
   echo json_encode($getreportYear);
      }
  if($type == 'trend'){

    $getopenreport = $functs->getopenreportfn($year);
    $getaddreport = $functs->getaddreportfn($year);
	$getcloreport = $functs->getcloreportfn($year);
 
  
  //data for existing customer


  

  $output = [];
  $output["open"]    = $getopenreport;
  $output["add"]    = $getaddreport ;
  $output["clo"]    = $getcloreport ;
 
  
  
  echo json_encode($output);
      }
	  
	  if($type == 'product'){

    $getproreport = $functs->getproreportfn($year);
    $getmapreport = $functs->getmapreportfn($year);
	$getclosedreport = $functs->getclosedreportfn($year);

  $output = [];
  $output["pro"]     = $getproreport;
  $output["map"]     =  $getmapreport ;
  $output["close"]     =  $getclosedreport ;
 
  
  
  echo json_encode($output);
      }
	 
  if($type == 'return'){

    $getreturnReport = $functs->getreturnReportFn($year);



 
  
  
  echo json_encode($getreturnReport);
      }	 
	  
?>