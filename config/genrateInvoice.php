<?php
 
 require_once('config.php'); 
 
 $action = false;
 $t=date('d-m-Y');
 $d=date("d",strtotime($t));
 $m=date("m",strtotime($t));
 $y=date("y",strtotime($t));
 $p_m=$m-1;
if($d == 30)
{
$i = $functs->invoiceCheckList($m);
if($p_m == $i) 
	{
		//$functs->generateInvoiceThisMonthNewEnq();
	$genrateall = $functs->invoiceGenrateAll();	
		
	
	}
	else
	{
		
	}
}
else
{
	
}

$invoice = $functs->getInvoiceList($action);
//print_r($invoice);
echo json_encode($invoice);
 
 
 //$cutomer_type=$functs->getCustomerType();
 
 
 
// $response = array(0 => $cutomer_type, 1 =>);
 
 
 
// echo json_encode($cutomer_type);
 
 
 
 
 
 // $servername = "localhost";
 // $username = "root";
 // $password = "pay";
 // $dbname = "payrentz";
 // // Create connection
 // $conn = mysql_connect($servername, $username, $password)or die("Failed to connect to MySQL: " . mysql_error());
 // $db=mysql_select_db($dbname,$conn) or die("Failed to connect to MySQL: " . mysql_error()); 
 
 
 
 
 // $query=" SELECT * FROM `nativity`";
 // $execute = mysql_query($query);	
 // $html ='';
 // while($result = mysql_fetch_assoc($execute))  
 // {		  
		   // $html .='<option value="'.$result["id"].'" >'.$result["name"].'</option>';
 // }   
 // $output[] = $html;

 // $query="SELECT * FROM `residential_status`";
 // $execute = mysql_query($query);	
	// $html ='';
	 // while($result = mysql_fetch_assoc($execute))  
 // {		  
		   // $html .='<option value="'.$result["id"].'" >'.$result["name"].'</option>';
 // }   
 // $output[] = $html;
	
 // $query="SELECT * FROM `states`";
 // $execute = mysql_query($query);	
	// $html ='';
	 // while($result = mysql_fetch_assoc($execute))  
  // {		  
		   // $html .='<option value="'.$result["id"].'" >'.$result["name"].'</option>';
		   // $s_id=$result["id"];
		   
		   // //city
		   // $query1="SELECT * FROM `cities` where state_id='$s_id'";
           // $execute1 = mysql_query($query1);	
	       // $html1 ='';
	        // while($result1 = mysql_fetch_assoc($execute1))  
             // {		  
		      // $html1 .='<option value="'.$result1["id"].'" >'.$result1["name"].'</option>';
			  // $c_id=$result1["id"];
			  
			  // //zone
			  	  // $query2="SELECT * FROM `zone` where city_id='$c_id'";
              // $execute2 = mysql_query($query2);	
            	// $html2 ='';
	          // while($result2 = mysql_fetch_assoc($execute2))  
              // {		  
		      // $html2 .='<option value="'.$result2["id"].'" >'.$result2["name"].'</option>';
			  // $z_id=$result2["id"];
			  // //area
			  
			  // $query3="SELECT * FROM `area` where zone_id='$z_id'";
              // $execute3 = mysql_query($query3);	
            	// $html3 ='';
              // while($result3 = mysql_fetch_assoc($execute3))  
                // {		  
		       // $html3 .='<option value="'.$result3["id"].'" >'.$result3["name"].'</option>';
                // }   
                // $output["area".$z_id.""] = $html3;
			  
			  
			  
              // }   
                // $output["zone".$c_id.""] = $html2;
		
			  
		     // }   
			 
			 // $output["city".$s_id.""] = $html1;
		// }   
              		   
 
    // $output[] = $html;	
	//echo json_encode($output);

?>