<?php
require_once('header.php');
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Enquiry        
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Enquiry</li>
      </ol>
    </section>

    <!-- Main content -->
    
	<section class="content">
      <!-- Small boxes (Stat box) -->
      
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
		
		            <div class="form-group">
                  <div class="col-sm-12">
                    <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="" onclick='userChange()'>
                      Existing User
                    </label>
					 <label>
                      <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" onclick='userChange()'>
                      New User
                    </label>
                  </div>
                  </div>
                </div>
				
				
        <section class="col-lg-12 connectedSortable ui-sortable">
        
				
		<div class="box box-primary" id="exist_user" >
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" method="post" action="config/save_enquiry.php">
			<input type="text" name='e_type' hidden value='0'>
              <div class="box-body">
			  
			
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">Customer ID</label>

                  <div class="col-sm-9">
                    <input type="" class="form-control" id="cus_id" name="e_cus_id" placeholder="Customer ID / Mobile"  required>
                  </div>
                </div>
				
							<div class="form-group">
							  <label for="cus_name" class="col-sm-3 control-label">Customer Name</label>

							  <div class="col-sm-9">
								<input type="text" class="form-control" name='e_cus_name' id='cus_name' placeholder="Customer Name" disabled="disabled">								
							  </select>
							  </div>
							</div>
				
				
							
						
				
              
				
				
                <div class="form-group">
                  <label for="datepicker" class="col-sm-3 control-label">Date of Enquiry</label>

                  <div class="col-sm-9">
                    <input type="date" class="form-control pull-right" id="datepicker" name="e_date" placeholder="dd/mm/yyyy" required>
                  </div>
                </div>
			  
			  		
				           
               
				
					
				
				
				
				
				<div class="form-group">
                  <label for="attendby" class="col-sm-3 control-label">Attended By</label>
                  <div class="col-sm-9">
                    <select class="form-control" id="e_attend" name="e_attend">
                    </select>
                  </div>
                </div>
				<div class="form-group">
                  <label for="assignby" class="col-sm-3 control-label">Assigned To</label>
                  <div class="col-sm-9">
                    <select class="form-control" id="e_assign" name="e_assign">
                    
                  </select>
                  </div>
                </div>
				
				
							
				
				<div class="form-group">
                  <label for="datepicker1" class="col-sm-3 control-label">Follow-up On</label>

                  <div class="col-sm-9">
                    <input type="date" class="form-control pull-right" id="datepicker1" name="e_f_date" placeholder="dd/mm/yyyy" required>
                  </div>
                </div>
				
						
				<div class="form-group">
                  <label for="remark1" class="col-sm-3 control-label">Remarks</label>

                  <div class="col-sm-9">
                    <textarea class="form-control" rows="3" id="remark1" name="e_remark" placeholder="Enter ..." required></textarea >	
                  </div>
                </div>						
						
					 <!-- /.box-header -->
            <div class="box-body">
			
				<div class="pull-right"><a  onclick="addVariant()">+</a></div>	
              <div class="table-responsive">

				<table class="table no-margin" id='c_e_product'>
                  <thead>
                  <tr>
                    <th>Category</th>
					<th>Variant</th>
					<th>Quantity</th>
					<th>Delivery</th>
					<th>Rent Duration</th>
					<th>Tenure</th>
					<th>Rent Cost(Per product) </th>
					<th>Security Deposit(Per product) </th>
					<th>Processing Fee(Per product)</th>
					<th>Ins. Fee(Per product)</th>
				
					<th>Action</th>
					</tr>
                  </thead>
                  <tbody>
				  
				  
<tr>
<td><select id="e_cat1" class="form-control" onchange="getVariant(this.value,'1')" name="e_cat[]" >
                 
                  </select></td>
				  <td><select id="e_var1" class="form-control" onchange="getVariantCost(this.value,'1')" name="e_var[]">
                   
                  </select></td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="e_quan1" placeholder="Quantity" name="e_quan[]">
                  </div>
                </div>	
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="date" class="form-control" id="e_delivery1"  name="e_delivery[]">
                  </div>
                </div>	
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="e_rent1" placeholder="In Months" name="e_rent[]" onchange="getTenureCost(this.value,'1')">
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="e_tenure1" placeholder="In Months" name="e_tenure[]" readonly>
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="e_rent_cost1" placeholder="" name="e_rent_cost[]">
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="e_security1" placeholder="" name="e_security[]">
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="e_pro_fee1" placeholder="" name="e_pro_fee[]">
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="e_ins_fee1" placeholder="" name="e_ins_fee[]">
                  </div>
                </div>	
				
</td>

<td class="action-link"><a  class="e_v_remove"> <i class="fa fa-trash-o" title="" aria-hidden="true"></i></a></td>
  </tr>              
                  </tbody>
                </table>
              </div>
	         
            </div>

			

               
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <a onclick="reset_page()" class="btn btn-default">Cancel</a>
                <button type="submit" class="btn btn-info pull-right">Submit</button>
              </div>
              <!-- /.box-footer -->
            </form>
			
          </div>
		
			<div class="box box-primary" id="new_user">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
			
			
            <!-- form start -->
            <form class="form-horizontal" method="post" action="config/save_enquiry.php" >
				<input type="text" name='e_type' hidden value='1'>
              <div class="box-body">
			  
			
            			<div class="form-group">
							  <label for="cus_name" class="col-sm-3 control-label">Customer Name</label>

							  <div class="col-sm-9">
								<input type="text" class="form-control" name='e_cus_name' id='' placeholder="Customer Name"  required>								
							  </select>
							  </div>
							</div>
				
				
							<div class="form-group">
							  <label for="states" class="col-sm-3 control-label">State</label>

							  <div class="col-sm-9">
								<select class="form-control"  name='c_state' id='c_state' onchange="getCity(this.value)" >
																
							  </select>
							  </div>
							</div>
							
							
							
							<div class="form-group">
							  <label for="cities" class="col-sm-3 control-label">City</label>

							  <div class="col-sm-9">
								<select class="form-control"  name='c_city' id='c_city' onchange="getZone(this.value)" >
													
							  </select>
							  </div>
							</div>
							
							
							
							<div class="form-group">
							  <label for="zones" class="col-sm-3 control-label">Zone</label>

							  <div class="col-sm-9">
								<select class="form-control" name='c_zone' id="c_zone"  onchange="getArea(this.value)" >
							   
							  </select>
							  </div>
							</div>
							
							
							<div class="form-group">
							  <label for="areas" class="col-sm-3 control-label">Area</label>

							  <div class="col-sm-9">
								<select class="form-control" name='c_area' id='c_area' >
								
							  </select>
							  </div>
							</div>
						  
						<div class="form-group">
							  <label for="cus_phone" class="col-sm-3 control-label">Phone</label>

							  <div class="col-sm-9">
								<input type="text" class="form-control" name='e_cus_phone' id='' placeholder="Phone " onchange ="existingCheck(this.value,'mobile')" pattern="[0-9]{10}" title="please enter your phone number only" required>								
							  </div>
							</div>
							
							<div class="form-group">
							  <label for="cus_phone" class="col-sm-3 control-label">Email</label>

							  <div class="col-sm-9">
								<input type="email" class="form-control" name='e_cus_email' id='' placeholder="Email " pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="please enter your correct email id" required>								
								</div>
							</div>
							
							<div class="form-group">
							  <label for="com_name" class="col-sm-3 control-label">Company Name</label>

							  <div class="col-sm-9">
								<input type="text" class="form-control" name='e_com_name' id='' placeholder="Company Name" required >								
							  </div>
							</div>
				
                     <div class="form-group">
                       <label for="inputPassword3" class="col-sm-3 control-label">Customer Type</label>

                       <div class="col-sm-9" >
                       <select class="form-control"  name='e_customer_type' id=''>
                       <option value="1">Individual</option>
                       <option value="2">Corporate</option>
                       <option value="3">Event</option>
                       </select>
                       </div>
                     </div>
				
				
                <div class="form-group">
                  <label for="datepicker" class="col-sm-3 control-label">Date of Enquiry</label>

                  <div class="col-sm-9">
                    <input type="date" class="form-control pull-right" id="" name="e_date" placeholder="dd/mm/yyyy" required>
                  </div>
                </div>
			  
			  		
				           
           
				
					
				<div class="form-group">
                  <label for="enquiry1" class="col-sm-3 control-label">Mode of Enquiry</label>
                  <div class="col-sm-9">
                    <select class="form-control" id="" name="e_mode" >
                    <option value='1'>Newspaper</option>
                    <option value='2'>Internet</option>
                    <option value='3'>Referral</option>
                  </select>
                  </div>
                </div>
				
				
				
				<div class="form-group">
                  <label for="attendby" class="col-sm-3 control-label">Attended By</label>
                  <div class="col-sm-9">
                    <select class="form-control" id="e_attend1" name="e_attend">
                    </select>
                  </div>
                </div>
				
				
				
							   <div class="form-group">
                  <label for="assignby" class="col-sm-3 control-label">Assigned To</label>
                  <div class="col-sm-9">
                    <select class="form-control" id="e_assign1" name="e_assign">
                    
                  </select>
                  </div>
                </div>
				
				<div class="form-group">
                  <label for="datepicker1" class="col-sm-3 control-label">Follow-up On</label>

                  <div class="col-sm-9">
                    <input type="date" class="form-control pull-right" id="datepicker1" placeholder="dd/mm/yyyy"  name="e_f_date" required>
                  </div>
                </div>
				
						
				<div class="form-group">
                  <label for="remark1" class="col-sm-3 control-label">Remarks</label>

                  <div class="col-sm-9">
                    <textarea class="form-control" rows="3" id="remark1" placeholder="Enter ..." name="e_remark" required></textarea>	
                  </div>
                </div>						
						
					 
           		 <!-- /.box-header -->
            <div class="box-body">
			
				<div class="pull-right"><a  onclick="addVariantNew()">+</a></div>	
              <div class="table-responsive">

				<table class="table no-margin" id='n_c_e_product'>
                  <thead>
                  <tr>
                    <th>Category</th>
					<th>Variant</th>
					<th>Quantity</th>
					<th>Delivery</th>
					<th>Rent Duration</th>
					<th>Tenure</th>
					<th>Rent Cost(Per product) </th>
					<th>Security Deposit(Per product) </th>
					<th>Processing Fee(Per product)</th>
					<th>Ins. Fee(Per product)</th>
					<th>Action</th>
					</tr>
                  </thead>
                  <tbody>
				  
				  
<tr>

<td><select id="n_e_cat1" class="form-control" onchange="getVariantNew(this.value,'1')" name="e_cat[]" >
                 
                  </select></td>
				  <td><select id="n_e_var1" class="form-control" name="e_var[]" onchange="getVariantNewcost(this.value,'1')">
                   
                  </select></td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="n_e_quan1" placeholder="Quantity"  name="e_quan[]">
                  </div>
                </div>	
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="date" class="form-control" id="n_e_delivery1"  name="e_delivery[]">
                  </div>
                </div>	
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="n_e_rent1" placeholder="In Months" name="e_rent[]" onchange="getTenureCostNew(this.value,'1')">
                  </div>
                </div>	
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="n_e_tenure1" placeholder="In Months" name="e_tenure[]" readonly>
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="n_e_rent_cost1" placeholder="" name="e_rent_cost[]">
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="n_e_security1" placeholder="" name="e_security[]">
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="n_e_pro_fee1" placeholder="" name="e_pro_fee[]">
                  </div>
                </div>	
				
</td>
<td>
                <div class="form-group">                  
                 <div class="col-sm-10">
                    <input type="text" class="form-control" id="n_e_ins_fee1" placeholder="" name="e_ins_fee[]">
                  </div>
                </div>	
				
</td>

<td class="action-link"><a  class="e_v_remove"> <i class="fa fa-trash-o" title="Remove Product" aria-hidden="true"></i></a></td>
  </tr>              
                  </tbody>
                </table>
              </div>
	         
            </div>

			

               
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <a onclick="reset_page()" class="btn btn-default">Cancel</a>
                <button type="submit" class="btn btn-info pull-right">Submit</button>
              </div>
              <!-- /.box-footer -->
            </form>
			
          </div>

		

        </section>
        <!-- /.Left col -->
        <!-- right col (We are only adding the ID to make the widgets sortable)-->
      
      </div>
      <!-- /.row (main row) -->

    </section>
	

	
	

      


	  
	
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php
  require_once('footer.php');
?>