<?php
require_once('header.php');

?>


			  
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	

			  
		<section class="content-header">
		
		
		
			<h1>Invoice</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Invoice</li>
			</ol>
		</section>

			<div class="row">
<div class="col-md-6">			  
	<div class="checkbox">
                      <label>
                        <input type="button" class="btn btn-primary sndnoti" sndtype="sms" value="Send SMS" /> 
                      </label>
                      <label>
                        <input type="button" class="btn btn-primary sndnoti" sndtype="email" value="Send Email" /> 
                      </label>					  
                    </div>
</div>					
<div class="col-md-6">			  					
					
        <button type="button" class="btn btn-primary pull-right" onclick="genrateInvoice();">Generate Invoice</button>
</div>
</div>   
			  
			  
    <!-- Main content -->				
	<section class="content">
		<div class="row">
        	<section class="col-lg-12 connectedSortable ui-sortable">
			
			
			
			<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Invoice List</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
               
              </div>
            </div>
            <!-- /.box-header -->
			
			
            <div class="box-body">
			
					
              <div class="table-responsive">

					
               <!---- <table class="table no-margin">
                  <thead>
                  <tr>
				    <th>Select</th>
                    <th>Date</th>
					<th>Bill No.</th>
					<th>Customer ID</th>
					<th>Name</th>
					<th>Status</th>
					<th>Rent</th>
					<th>Other Charges</th>
					<th>Followup</th>
					<th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
				  
				  
<tr>
<td><input type="checkbox" /></td>
<td>18/10/2016</td>
<td>343123</td>
<td>Cust123</td>
<td>Venkat</td>
<td>waiting for approval</td>
<td>3000</td>
<td>1500</td>
<td><button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">Click</button></td>
<td><a href="#">Edit</a> | <a data-toggle="modal" data-target="#invoiceview" href="#">View</a></td>
</tr>

				  
<tr>
<td><input type="checkbox" /></td>
<td>18/10/2016</td>
<td>343123</td>
<td>Cust123</td>
<td>Venkat</td>
<td>waiting for approval</td>
<td>3000</td>
<td>1500</td>
<td><button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">Click</button></td>
<td><a href="#">Edit</a> | <a data-toggle="modal" data-target="#invoiceview" href="#">View</a></td>
</tr>


<tr>
<td><input type="checkbox" /></td>
<td>18/10/2016</td>
<td>343123</td>
<td>Cust123</td>
<td>Venkat</td>
<td>waiting for approval</td>
<td>3000</td>
<td>1500</td>
<td><button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">Click</button></td>
<td><a href="#">Edit</a> | <a data-toggle="modal" data-target="#invoiceview" href="#">View</a></td>
</tr>
</tbody>
</table>-->
			
			<form id="frm-example">
				<table id="example" class="display" cellspacing="0" width="100%">
				 <thead>
					  <tr>
						 <th><input name="select_all" value="1" type="checkbox"></th>
						 <th>CUSTOMER ID</th>
						 <th>CUSTOMER NAME</th>
						 <th>Total Rent</th>
						 <th>Pending Rent</th>
						 <th>Pending Security Deposit</th>
						 <th>Status</th>
					  </tr>
				  </thead>
				  <tfoot>
					  <tr>
						 <th></th>
						 <th>CUSTOMER ID</th>
						 <th>CUSTOMER NAME</th>
						 <th>Total Rent</th>
						 <th>Pending Rent</th>
						 <th>Pending Security Deposit</th>
						 <th>Status</th>
					  </tr>
				  </tfoot>
				
			    </table>
			 
			    <p><button type="submit">Submit</button></p>
			</form>
    </div>
	  <!-- /.table-responsive -->
  </div>

</div>
		  
		  	  
 
			
			
			</section>
          
		  
		  
<div class="box-body">
			
					
              <div class="table-responsive">

					
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>Product ID</th>
					<th>Product</th>
					<th>Variant</th>
					<th>Brand</th>
					<th>Date of Purchase</th>
					<th></th>
                  </tr>
                  </thead>
                  <tbody>
				  
				  
<tr>
<td>Prod123</td>
<td>AC/td>
<td>Split 1.5</td>
<td>LG</td>
<td>18.10.2016</td>
<td><input type="checkbox"></td>
</tr>

				  
<tr>
<td>Prod123</td>
<td>AC/td>
<td>Split 1.5</td>
<td>LG</td>
<td>18.10.2016</td>
<td><input type="checkbox"></td>
</tr>
				  
				  
<tr>
<td>Prod123</td>
<td>AC/td>
<td>Split 1.5</td>
<td>LG</td>
<td>18.10.2016</td>
<td><input type="checkbox"></td>
</tr>
				  
<tr>
<td>Prod123</td>
<td>AC/td>
<td>Split 1.5</td>
<td>LG</td>
<td>18.10.2016</td>
<td><input type="checkbox"></td>
</tr>
                  
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
			  
			  
            </div>



<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body remark">
	  
				<div class="form-group">
                  <label for="inputPassword3" class="col-sm-3 control-label">Remarks</label>

                  <div class="col-sm-9">
                    <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>	
                  </div>
                </div>	
				
     </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="invoiceview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" style='width:100%'>
    <div class="modal-content" >
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body" >
	  
	  
	  
				            <div class="box-body">
			
			
			
	   
				
				
					
              <div class="table-responsive">

				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Customer ID</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="Cust123" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Customer Name</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="Venkat" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Bill No.</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="343123" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Total Security Amount</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="37500" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Total Processing Fee</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="1500" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Total Installation Fee</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="1500" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Total Other Fee</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="1500" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Total Rent Cost</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="4500" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Received Amount</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="0" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Pennding Amount</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="9000" disabled/>
                  </div>
                </div>
				<div class="form-group col-sm-4" style='margin-bottom:20px;'>
                  <label for="inputEmail3" class=" control-label " >Refund Amount</label>

                  <div class="">
                    <input type="email" class="form-control" id="inputEmail3" value="28000" disabled/>
                  </div>
                </div>
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>Product Name</th>
					<th>Variant</th>
					<th>product Id</th>
					<th>Delivery On</th>
					<th>Installation On</th>
					<th>Rent On</th>
					<th>Return ON</th>
					<th>Cost Type</th>
					<th>Cost</th>
					
                  </tr>
                  </thead>
                  <tbody>
				  
				  
<tr valign="center">
<td rowspan='5'>AC</td>
<td rowspan='5'>Window 1.5 Ton</td>
<td rowspan='5'>Actn12345</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>

<td>Security Amount</td>
<td>12500</td>

</tr>
<tr>

<td>Processing Fee</td>
<td>500</td>


</tr>
<tr>
<td>Installation Fee</td>
<td>500</td>


</tr>
<tr>
<td>Other Fee</td>
<td>500</td>


</tr>
<tr>
<td>Rent Cost</td>
<td>1500</td>


</tr>

  </tbody>
  <tbody>
				  
				  
<tr valign="center">
<td rowspan='5'>Washing Machine</td>
<td rowspan='5'>Front Loading</td>
<td rowspan='5'>Actn12345</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>

<td>Security Amount</td>
<td>12500</td>

</tr>
<tr>

<td>Processing Fee</td>
<td>500</td>


</tr>
<tr>
<td>Installation Fee</td>
<td>500</td>


</tr>
<tr>
<td>Other Fee</td>
<td>500</td>


</tr>
<tr>
<td>Rent Cost</td>
<td>1500</td>


</tr>

  </tbody>
                   <tbody>
				  
				  
<tr valign="center">
<td rowspan='5'>AC</td>
<td rowspan='5'>Window 1.5 Ton</td>
<td rowspan='5'>Actn12345</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>
<td rowspan='5'>26/4/2017</td>

<td>Security Amount</td>
<td>12500</td>

</tr>
<tr>

<td>Processing Fee</td>
<td>500</td>


</tr>
<tr>
<td>Installation Fee</td>
<td>500</td>


</tr>
<tr>
<td>Other Fee</td>
<td>500</td>


</tr>
<tr>
<td>Rent Cost</td>
<td>1500</td>


</tr>

  </tbody>



         
                
                </table>
              </div>
              <!-- /.table-responsive -->
		             </div>
				
				
     </div>
      <div class="modal-footer">
        
        <button type="button" class="btn">Cancel</button>
      </div>
    </div>
  </div>
</div>

			
        <!-- right col -->
      </div>
      <!-- /.row (main row) -->


	  
	  
    </section>
    <!-- /.content -->
	


	  
  </div>  
  <!-- /.content-wrapper -->
  <?php
  require_once('footer.php');
?>