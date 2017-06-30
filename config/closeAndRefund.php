<?php
 require_once('config.php'); 
 @$type     = $_POST['type'];
 @$p_id     = $_POST['p_id'];
 @$c_date   = $_POST['c_date'];
 @$remark   = $_POST['remark'];
 @$rent     = $_POST['rent'];
 @$a_ren    = $_POST['a_ren'];
 @$r_pend   = $_POST['r_pend'];
 @$refund   = $_POST['refund'];
 @$c_id   = $_POST['c_id'];

 
 if($type == "close")
 {

            $t=date('d-m-Y');
			$c_m=date("m",strtotime($t));
			$c_y=date("y",strtotime($t));
			$t_d = cal_days_in_month(CAL_GREGORIAN, $c_m, $c_y);
            $per_day = $rent/$t_d ;
            
            $t=date($c_date); 
            $c_d=date("d",strtotime($t));
            $c_d=$c_d+1;
              $r_c = $c_d * $per_day;
             if($c_d < 8)
             {
                 $t_c = $r_c + $a_ren ;
             }
            else
              {
                  $t_c = $r_c ;
              }

	//Update product details

    	
		$update = array('closure_remark' => $remark, 'closure_date' => $c_date,"rent_cost"=>$t_c,'is_closure' =>1);				
		$where_clause = array(
				'product_id'=> $p_id
		);
		$updated = $functs->update('mapping_table', $update, $where_clause);
 }
 
 if($type == "refund")
 {

           

	//Update product details
      if($refund > 0)
	  {
		  $pen = 0;
	  }
	  else
	  {
		  $pen = preg_replace("/-/", "", $refund);
	  }
	 
    	
		$update = array('refund_remark' => $remark, 'refund_amount' => $refund,"pending_minus"=>$r_pend,'removed_status' =>1,'refund_status' =>1);				
		$where_clause = array(
				'product_id'=> $p_id
		);
		$updated = $functs->update('mapping_table', $update, $where_clause);
		
		
		$update = array('pending_cost' => $pen);				
		$where_clause = array(
				'customer_id'=> $c_id
		);
		$updated = $functs->update('customer_general_detail', $update, $where_clause);
 }
 
 
 
     

?>