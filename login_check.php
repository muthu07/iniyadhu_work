<?php 

   require_once('config/config.php'); 
   @$usr_name = $_POST['usr_name'];
   @$pass = $_POST['pass'];
   $checkLogin = $functs->fnCheckLogin($usr_name,$pass);
   session_start();
   if (!empty($checkLogin)) 
   {
	   
       $_SESSION['username'] =  $checkLogin[0]["user_name"];
	   $_SESSION['city'] =  $checkLogin[0]["city"];
	   
   }
    	else
		{
			print_r('Failed');
			$_SESSION['username'] =  'no';
			
		}
            $url = 'index.php';
			header("Location:  $url")
   
 ?>