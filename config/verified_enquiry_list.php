<?php
 require_once('config.php'); 
 session_start();
  $city = $_SESSION['city'] ;
  $enquiryIdList = $functs->verifiedEnquiryIdlistFn();
  $total_length =count($enquiryIdList);

  $output = array('data' => array());
  for ($x = 0; $x < $total_length; $x++) 
  {
	   $id= $enquiryIdList [$x]["enquiry_id"];
	    
       $type= $enquiryIdList[$x] ["customer_status"];
	   $enquiryData = $functs->verifiedEnquiryDataFn($id,$type);
          
	   $assignedBy = $functs->empNameFn($enquiryData [4]);
	   $assignedTo = $functs->empNameFn($enquiryData [5]);
	   
	   $output['data'][] = array($enquiryData [0], $enquiryData [1], $enquiryData [2],
 		        $enquiryData [3],
				$assignedBy["name"],
				$assignedTo["name"],
				$enquiryData [6],
				$enquiryData [7]
				); 
  }




echo json_encode($output);
 
?>