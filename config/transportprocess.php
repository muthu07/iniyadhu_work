<?php
 require_once('config.php'); 
 //print_r($_POST);
 			@$transportdate = $_POST['transportdate'];   			 
			@$transport_amount = $_POST['transport_amount'];
			@$transport_remark = $_POST['transport_remark'];   			 
			@$driverid = $_POST['driverid'];
			@$license = $_POST['license'];
			@$validtill = $_POST['validtill'];   			 
			@$transport_product = $_POST['transport_product'];
			@$transportcustome_id = $_POST['transportcustome_id'];

			$result = count($transport_product);
			$costforper = $transport_amount / $result;			

			for($i=0;$i<$result;$i++)
			{
				
				$Insert_data = array('customer_id' => $transportcustome_id[$i],'product_id' => $transport_product[$i],'transfer_date' =>$transportdate,'amount_spent'=>$costforper,'remarks'=>$transport_remark,'driver_id' =>$driverid,'license_no' => $license,'valid_till' =>$validtill);	
    			$table_name='transport_expenses';
				$insertData = $functs->insertFn($table_name,$Insert_data); 

				$extra="SELECT extra_amount from customer_general_detail where customer_id= '".$transportcustome_id[$i]."'";	
				$extradata = $functs->get_results($extra);
				$extra_amount = $extradata[0]["extra_amount"];

				$extra_amount = $extra_amount + $costforper;

				$update = array('extra_amount' => $extra_amount );		
				$where_clause = array('customer_id'=> $transportcustome_id[$i]);
				$updated = $functs->update('customer_general_detail', $update, $where_clause);				
			}



 ?>