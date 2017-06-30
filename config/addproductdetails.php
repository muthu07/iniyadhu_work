<?php
 
 require_once('config.php'); 
//	 print_r($_POST);
		// print_r($_FILES);
 
			@$category = $_POST['category'];   			 
			@$variant = $_POST['variant'];
			@$brand = $_POST['productbrand'];   			 
			@$vendor = $_POST['vendor'];
			@$vendorthird = $_POST['vendorthird'];
			@$purchasedate = $_POST['purchasedate'];   			 
			@$purchase_value = $_POST['purchase_value'];
			@$other_charge = $_POST['other_charge'];   			 
			@$serialno = $_POST['serialno'];
			@$warrantydate = $_POST['warrantydate'];   			 
			@$billnumber = $_POST['billnumber'];
			@$ownedtype = $_POST['ownedtype'];   			 
			@$location = $_POST['location'];  
			@$vendorthird = $_POST['vendorthird'];
			@$rentpurchasedate = $_POST['rentpurchasedate'];   			 
			@$rentpurchase_value = $_POST['rendpurchase_value'];			
			@$cityproduct = $_POST['cityproduct'];
  
  
		$category = explode(',', $category);
		$variant = explode(',', $variant);
		$brand = explode(',', $brand);
		$vendor = explode(',', $vendor);
		$vendorthird = explode(',', $vendorthird);
		 

		$product_id="SELECT product_id from product ORDER BY id DESC LIMIT 1";		
		$product_iddata = $functs->get_results($product_id);
		$lastproductid= $product_iddata[0]["product_id"];
		

		$serialno = substr($serialno, -4);

		$purchasedate = explode('-', $purchasedate);
		$year = $purchasedate[0];
		$month   = $purchasedate[1];
		$date  = $purchasedate[2];
		$year = (int)$year;
		$month = (int)$month;		

		$year = substr($year, -2);
		$lastproductid = substr($lastproductid, -4);
		$lastproductid = (int)$lastproductid;
		$lastproductid = $lastproductid +1;

		if($month == 12)
		{
			$month = 'D';
		}
		else if($month == 11)
		{
			$month = 'N';
		}
		else if($month == 10)
		{
			$month = 'O';
		}
		
		$productid = $cityproduct.$category[1].$serialno.$variant[1].$brand[1].$vendor[1].$date.$month.$year.$lastproductid ;
		
		mkdir(dirname(__FILE__) . '/../Documents/product/' . $productid, 0777, true);
		mkdir(dirname(__FILE__) . '/../Documents/product/' . $productid . '/others/', 0777, true);
		mkdir(dirname(__FILE__) . '/../Documents/product/' . $productid . '/productimages/', 0777, true);
		
		

		$billtotal = count($_FILES['billimages']['name']);
		for($i=0; $i<$billtotal; $i++) {		  
		  $billtmpFilePath = $_FILES['billimages']['tmp_name'][$i];		  
		  if ($billtmpFilePath != ""){			
			$billnewFilePath ='../Documents/product/' . $productid . '/others/' . $_FILES['billimages']['name'][$i];			
			if(move_uploaded_file($billtmpFilePath, $billnewFilePath)) {
				$productuploadpath = '/others/'. $_FILES['billimages']['name'][$i];	
				$productuploadimg = $_FILES['billimages']['name'][$i];
				$productimgdata = array('image_name' => $productuploadimg,'image_path' => $productuploadpath,'status' =>0,'productkey' =>$productid,
				'file_type' => 'others');
				$table_name='product_image';
				$productimg_data = $functs->insertFn($table_name,$productimgdata);				
			}
		  }
		}		

        
		$total = count($_FILES['productimages']['name']);
		for($i=0; $i<$total; $i++) {		  
		  $tmpFilePath = $_FILES['productimages']['tmp_name'][$i];		  
		  if ($tmpFilePath != ""){			
			$newFilePath ='../Documents/product/' . $productid . '/productimages/' . $_FILES['productimages']['name'][$i];			
			if(move_uploaded_file($tmpFilePath, $newFilePath)) {
				$productuploadpath = '/productimages/'. $_FILES['productimages']['name'][$i];	
				$productuploadimg = $_FILES['productimages']['name'][$i];
				$productimgdata = array('image_name' => $productuploadimg,'image_path' => $productuploadpath,'status' =>0,'productkey' =>$productid,
				'file_type' => 'productimg');
				$table_name='product_image';
				$productimg_data = $functs->insertFn($table_name,$productimgdata);				
			}
		  }
		}
		
		$variantid = $variant[0];
		$brandid = $brand[0];
		if($ownedtype == 0)
		{			
			$vendorthird = $vendorthird[0];
			$rentpurchasedate = $rentpurchasedate;
			$rentpurchase_value = $rentpurchase_value;
		}
		else
		{			
			$vendorthird = 0;
			$rentpurchasedate = 0000-00-00;
			$rentpurchase_value = 0;
		}
		
		$vendorid = $vendor[0];
			
	//Insert Professional Detail 
	$Insert_data = array('product_id' => $productid,'ptdvar_id' => $variantid,'brand' =>$brandid,
	'purchase_type' =>$ownedtype,'prtd_location' =>$location,'vendor' =>$vendorid,'sl_no' => $_POST['serialno'],
	'purchase_date' =>$_POST['purchasedate'],'purchase_cost'=>$purchase_value,'expenses' =>$other_charge,
	'rent_vendor' =>$vendorthird,'rent_purchase_date'=>$rentpurchasedate,'rent_to_vendor_cost' =>$rentpurchase_value,
	'bill_no' =>$billnumber,'warranty_end_date' =>$warrantydate,'warranty_status'=>0);	
    $table_name='product';
	$insertData = $functs->insertFn($table_name,$Insert_data); 	
	
				
	
?>