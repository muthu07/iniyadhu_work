<?php
require_once('header.php');
?>
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<section class="content-header">
			<h1>Customers</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Customers</li>
			</ol>
		</section>

			

			  
    <!-- Main content -->				
	<section class="content">
		<div class="row">
        	<section class="col-lg-12 connectedSortable ui-sortable" id="Customer_tab_view">
			
			
			
			<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Customer View</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
			
			
            <div class="box-body">
			
					
              <div class="table-responsive">

					
             <form id="frm-example">
				<table id="customer" class="display" cellspacing="0" width="100%">
				 <thead>
					  <tr>
						 <th><input name="select_all" value="1" type="checkbox"></th>
						 <th>CUSTOMER ID</th>
						 <th>CUSTOMER NAME</th>
						 <th>Email</th>
						 <th>Extra Amount Paid</th>
						 <th>Action</th>
					  </tr>
				  </thead>
				  <tfoot>
					  <tr>
						 <th></th>
						 <th>CUSTOMER ID</th>
						 <th>CUSTOMER NAME</th>
						 <th>Email</th>
						 <th>Extra Amount Paid</th>
						
						 <th>Action</th>
					  </tr>
				  </tfoot>
				
			    </table>
			 
			   <!-- <p><button type="submit">Submit</button></p>-->
			</form>
              </div>
              <!-- /.table-responsive -->
            </div>

          </div>
		  
		  	  
			  
			
			
			</section>
			
			<section class="content" id="edit_view">
			<h3 class="box-title" id='view' style="margin-left:13px"></h3>
      <!-- Small boxes (Stat box) -->
      
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-12 ">
        <form id='editCustomerform' action="config/save_edit_customer_detail.php" method="post" enctype="multipart/form-data">
		<input id="kyclen" style='display:none;' name="kyclen">
				<div class="box box-primary">
					<div class="box-header with-border">
					  <h3 class="box-title">Personal Details</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<div class="form-horizontal">
					  <div class="box-body">
					  
						  <div class="row">
							<div class="col-lg-2">
								<div class="form-group">
									<label for="" class="col-sm-12 control-label">Customer photo</label>
									<div class="col-sm-12">
										<img src=".jpg" width="100px" height="100px" id="user"><br/><br/>
									 
										<input type="file" id="file" class="inputfile" name="userfile[]" onchange="uploadOnChange()" vale="" /> 
										<input type="text" name="filename_u_photo" hidden /> 
										<label for="file" class="btnupload" id="up"><i class="fa fa-upload" aria-hidden="true"></i></label> 
										<div id="imgfileerror" class="error"></div>
										<!-- <input id="upfile" type="text"> -->
									   <br/>
									</div>
								</div>
							</div>
							<div class="col-lg-10">
							
								<div class="row">
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="ctype" class="col-sm-12 control-label">Customer Type</label>

									  <div class="col-sm-12">
										<select name='c_type' id='c_type' class="form-control">
										<option value='1'>Individual</option>
										<option value='2'>Corporate</option>
										<option value='3'>Event</option> 
									  </select>
									  </div>
									  </div>
									
									
									</div>
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="applicantname" class="col-sm-12 control-label">Applicant Name *</label>

									 <div class="col-sm-12">
										<input type="text" class="form-control"   id="applicantname" placeholder="Name" name='c_name' >
										<input type="hidden" class="form-control" id="customer_id" placeholder="Name"   name='cus_id' >
										<div id="anameerror" class="error"></div>
									 </div>
									 
									</div>
									
									</div>
									
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="datepicker2" class="col-sm-12 control-label">Date of Birth</label>

									  <div class="col-sm-12">
										<input type="date" class="form-control pull-right" id="datepicker2" placeholder="dd/mm/yyyy" name='c_dob'>
									  </div>
									</div>
									</div>
								  
								  <div class="col-lg-3">
									<div class="form-group">
									  <label for="nativity1" class="col-sm-12 control-label">Nativity</label>
									  <div class="col-sm-12">
										<select class="form-control" name='c_nativity' id='c_nativity'>
										
									  </select>
									  </div>
									</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="inputPassword3" class="col-sm-12 control-label">Gender</label>
										<div class="radio">
										<label>
										  <input type="radio" name="c_gender" id="optionsRadios1" value="0" checked="">
										  Male
										</label>
										 <label>
										  <input type="radio" name="c_gender" id="optionsRadios2" value="1">
										  Female
										</label>
									  </div>
									</div>
									</div>
									
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="inputPassword3" class="col-sm-12 control-label">Marital Status</label>
										<div class="radio">
										<label>
										  <input type="radio" name="c_mart_status" id="optionsRadio1" value="0" checked="">
										  Single
										</label>
										 <label>
										  <input type="radio" name="c_mart_status" id="optionsRadio2" value="1">
										  Married
										</label>
									  </div>
									</div>
									</div>
									
									<div class="col-lg-3">	
									<div class="form-group">
									  <label for="residential" class="col-sm-12 control-label">Residential Status</label>
									  <div class="col-sm-12">
										<select class="form-control" name='c_res_status' id='c_res_status'>
										<option value='1'>Permanent</option>
										<option value='2'>Rented</option>
									  </select>
									  </div>
									</div>
									</div>
						
									<div class="col-lg-3">	
									<div class="form-group">
									  <label for="enquiryemail" class="col-sm-12 control-label">Email *</label>
									 <div class="col-sm-12">
										<input type="text" class="form-control" id="enquiryemail" placeholder="Email" name='c_email' onchange="existingCheck(this.value,'email')" >
										<div id="amailerror" class="error"></div>	
									  </div>
																		  
									</div>
									</div>
								</div>
								
								<div class="row">
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="states" class="col-sm-12 control-label">State</label>

									  <div class="col-sm-12">
										<select class="form-control"  name='c_state' id='c_state' onchange="getCity(this.value)" >
																		
									  </select>
									  </div>
									</div>
									</div>
									
									
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="cities" class="col-sm-12 control-label">City</label>

									  <div class="col-sm-12">
										<select class="form-control"  name='c_city' id='c_city' onchange="getZone(this.value)">
															
									  </select>
									  </div>
									</div>
									</div>
									
									
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="zones" class="col-sm-12 control-label">Zone</label>

									  <div class="col-sm-12">
										<select class="form-control" name='c_zone' id="c_zone"  onchange="getArea(this.value)">
									   
									  </select>
									  </div>
									</div>
									</div>
									
									<div class="col-lg-3">
									<div class="form-group">
									  <label for="areas" class="col-sm-12 control-label">Area</label>

									  <div class="col-sm-12">
										<select class="form-control" name='c_area' id='c_area'>
										
									  </select>
									  </div>
									</div>
									</div>
								</div>
							</div>
						  </div>
					  
						<div class="row">	
							<div class="col-lg-6">
								<div class="box-body">
									<div class="box-header with-border">
									  <h3 class="box-title">Add Phone Number</h3>
									</div>
								<div class="pull-right "><a  class="action-link" onclick="add_mobile();" style="cursor:pointer">+</a></div>	
								<div class="table-responsive">

									<table id='mobile_table' class="table no-margin">
									<thead>
										<tr>
											<th>Mobile Type</th>
											<th>Number *</th>
											<th class="action-link">Action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><select class="form-control" name='c_mobile_type[]'>
												<option>Primary</option>
												<option>Secondary</option>
												</select>
											</td>
											<td>
												<div class="form-group">                  
												 <div class="col-sm-10">
													<input type="text" class="form-control" id="mobile" placeholder="Mobile" name="c_mobile_no[]"  onchange="existingCheck(this.value,'mobile')">
													<div id="tmobileerror" class="error"></div>	
												  </div>
												</div>	
											</td>
											<td class="action-link"> <a class='m_remove' style="cursor:pointer"> <i class="fa fa-trash-o"  aria-hidden="true"></i></a>
											</td>
										</tr>    
									</tbody>
									</table>
								</div>
								</div>
							</div>
							<div class="col-lg-6" style="border-left:1px solid #ccc;">
								<div class="box-body">
									<div class="box-header with-border">
									  <h3 class="box-title">Add Address</h3>
									</div>
									<div class="pull-right"><a class="action-link" onclick='add_address()'>+</a></div>	
									<div class="table-responsive" >

										<table class="table no-margin" id='address_table'>
										<thead>
										  <tr>
											<th>Address Type</th>
											<th>Address</th>
											<th class="action-link">Action</th>
											</tr>
										</thead>
										<tbody>
										<tr>
											<td>
												<select class="form-control" name='c_address_type[]'>
													<option value="Permanent">Permanent</option>
													<option value="Communication">Communication</option>
													<option value="Company">Company</option>
												</select>
											</td>
											<td>
												<div class="form-group">                  
												<div class="col-sm-10">
													<textarea class="form-control" rows="3" id="permanent_address" placeholder="Enter. . ." name="c_address[]"></textarea>	
													<div id="tadreserror" class="error"></div>	
												</div>
												</div>	
											</td>
											<td class="action-link">
												<a class="a_remove"> <i class="fa fa-trash-o"  aria-hidden="true"></i></a>
											</td>
										</tr>              
										</tbody>
										</table>
									</div>
								</div>
							
							</div>
						</div>
			</div>
			  <!-- /.box-body -->
				<!-- /.box-footer -->
			</div>
		</div>

			<div class="box box-primary">
				<div class="box-header with-border">
				    <h3 class="box-title">Professional Details</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<div class="form-horizontal">
				<div class="box-body">
					<div class="row"> 
						<div class="col-lg-3">	
							<div class="form-group">
							  <label for="cname" class="col-sm-12 control-label">Company Name</label>
							 <div class="col-sm-12">
								<input type="text" class="form-control" id="cname" placeholder="Company Name" name="c_company_name">
								<div id="cnameerror" class="error"></div>	
							  </div>				
							</div>
						</div>
							
						<div class="col-lg-3">	
							<div class="form-group">
							 <label for="designation" class="col-sm-12 control-label">Designation</label>
							<div class="col-sm-12">
							<input type="text" class="form-control" id="designation" placeholder="Designation" name='c_company_designation'>
							<div id="designationerror" class="error"></div>	
							 </div>				
							</div>
						</div>
							
						<div class="col-lg-3">		
							<div class="form-group">
							  <label for="department" class="col-sm-12 control-label">Department</label>
							<div class="col-sm-12">
								<input type="text" class="form-control" id="department" placeholder="Department" name='c_depart'>
								<div id="departmenterror" class="error"></div>	
							 </div>				
							</div>
						</div>
							
						<div class="col-lg-3">
							<div class="form-group">
								 <label for="alternateemail" class="col-sm-12 control-label">Alternate Email</label>
								 <div class="col-sm-12">
									<input type="text" class="form-control" id="alternateemail" placeholder="Alternate Email" name='c_alter_email' onchange="existingCheck(this.value,'email')">
									<div id="altemailerror" class="error"></div>	
								 </div>				
							</div>
						</div>
					</div>		
				</div>
					
				</div>
			</div>
		
					 
				<div class="box box-primary">
					<div class="box-header with-border">
					  <h3 class="box-title">Reference 1</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<div class="form-horizontal">
					  <div class="box-body">
					  
						<div class="row">	
							<div class="col-lg-3">
							<div class="form-group">
							  <label for="ename" class="col-sm-12 control-label">Name</label>

							  <div class="col-sm-12">
								<input type="text" class="form-control pull-right" id="ename" placeholder="Name" name='c_ref_name[]'>
								<div id="enameerror" class="error"></div>	
							  </div>
							</div>
							</div>

							<div class="col-lg-3">
							<div class="form-group">
							  <label for="enquiryemails" class="col-sm-12 control-label">Email</label>

							  <div class="col-sm-12">
								<input type="text" class="form-control pull-right" id="enquiryemails" placeholder="Email" name='c_ref_email[]'>
								<div id="emailserror" class="error"></div>	
							  </div>
							</div>
							</div>
						
							<div class="col-lg-3">
							<div class="form-group">
							  <label for="emobile" class="col-sm-12 control-label">Mobile</label>

							  <div class="col-sm-12">
								<input type="text" class="form-control pull-right" id="emobile" placeholder="Mobile" name='c_ref_mobile[]'>
								<div id="emobileerror" class="error"></div>	
							  </div>
							</div>
							</div>
				
							
							<div class="col-lg-3">
							<div class="form-group">
							  <label for="eaddress" class="col-sm-12 control-label">Address</label>

							  <div class="col-sm-12">
								<textarea class="form-control" rows="3" id="eaddress" placeholder="Enter ..." name='c_ref_add[]'></textarea>
								<div id="eaddresserror" class="error"></div>									
							  </div>
							</div>		
							</div>		
               
						</div>
				  <!-- /.box-body -->

				  <!-- /.box-footer -->
					</div>
			  </div>
			  </div>
			  
				<div class="box box-primary">
					<div class="box-header with-border">
					  <h3 class="box-title">Reference 2</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<div class="form-horizontal">
					  <div class="box-body">
					  
					<div class="row">	
						<div class="col-lg-3">
						<div class="form-group">
						  <label for="rname" class="col-sm-12 control-label">Name</label>

						  <div class="col-sm-12">
							<input type="text" class="form-control pull-right" id="rname" placeholder="Name" name='c_ref_name[]'>
							<div id="rnameerror" class="error"></div>	
						  </div>
						</div>
						</div>

						<div class="col-lg-3">
						<div class="form-group">
						  <label for="remail" class="col-sm-12 control-label">Email</label>

						  <div class="col-sm-12">
							<input type="text" class="form-control pull-right" id="remail" placeholder="Email" name='c_ref_email[]'>
							<div id="remailerror" class="error"></div>	
						  </div>
						</div>
						</div>
						
						<div class="col-lg-3">
						<div class="form-group">
						  <label for="rmobile" class="col-sm-12 control-label">Mobile</label>

						  <div class="col-sm-12">
							<input type="text" class="form-control pull-right" id="rmobile" placeholder="Mobile" name='c_ref_mobile[]'>
							<div id="rmobileerror" class="error"></div>	
						  </div>
						</div>
						</div>
									
						<div class="col-lg-3">		
						<div class="form-group">
						  <label for="raddress" class="col-sm-12 control-label">Address</label>

						  <div class="col-sm-12">
							<textarea class="form-control" rows="3" id="raddress" placeholder="Enter ..." name='c_ref_add[]'></textarea>	
							<div id="raddresserror" class="error"></div>	
						  </div>
						</div>		
						</div>		
						
						
					   
					  </div>
					  <!-- /.box-body -->

					  <!-- /.box-footer -->
					</div>
				  </div>
				</div>
		 
				<div class="box box-primary">
					<div class="box-header with-border">
					  <h3 class="box-title">KYC Details</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<div class="form-horizontal">
						<div class="box-body">
						
						<div class="row">
							<div class="col-lg-3">
							<div class="form-group">
									<label for="" class="col-sm-12 control-label">Company ID</label>
									<div class="col-sm-12">
									<img src=".jpg" width="50px" height="50px" id="companyid"><br/><br/>
										<input type="file" name="userfile[]"  id="cidfile" class="companyinput" onchange="companyOnChange()"vale=""/> 
										<input type="text" name="filename_com_id" hidden /> 
										<label for="cidfile" id="cidup"><i class="fa fa-upload" aria-hidden="true" ></i></label>
										<div id="cidfileerror" class="error"></div>										
									</div>
							</div>
							</div>
							
							<div class="col-lg-3">
							<div class="form-group">
									<label for="" class="col-sm-12 control-label">Cancelled Cheque</label>
									<div class="col-sm-12">
									<img src=".jpg" width="50px" height="50px" id="cancelcheque"><br/><br/>
										<input type="file" name="userfile[]"  id="cancelfile" class="cancelinput" onchange="cancelOnChange()" vale=""/> 
										<input type="text" name="filename_can_checq" hidden /> 
										<label for="cancelfile" id="canup"><i class="fa fa-upload" aria-hidden="true" ></i></label> 
										<div id="cancelfileerror" class="error"></div>	
									</div>
							</div>
							</div>
							
							<div class="col-lg-3">
							<div class="form-group">
									<label for="" class="col-sm-12 control-label">ID Proof</label>
									<div class="col-sm-12">
									<img src=".jpg" width="50px" height="50px" id="idproof"><br/><br/>
										<input type="file" name="userfile[]"  id="idfile" class="idproofinput" onchange="idproofOnChange()" vale=""/> 
										<input type="text" name="filename_id_proof" hidden /> 
										<label for="idfile" id="idpup"><i class="fa fa-upload" aria-hidden="true"></i></label> 
										<div id="idfileerror" class="error"></div>	
									</div>
							</div>
							</div>
							
							<div class="col-lg-3">
							<div class="form-group">
									<label for="" class="col-sm-12 control-label">Address Proof</label>
									<div class="col-sm-12">
									<img src="" width="50px" height="50px" id="addressproof"><br/><br/>
										<input type="file" name="userfile[]"  id="addressfile" class="adresprofinput" onchange="addressOnChange()" vale=""/>
										<input type="text" name="filename_add_proof" hidden /> 
										<label for="addressfile" id="adpup"><i class="fa fa-upload" aria-hidden="true"></i></label>
										<div id="addressfileerror" class="error"></div>	 										
									</div>
							</div>
							</div>
				
						</div>
					
					  <div class="box-body">
						<div class="row">
					
							<div class="col-lg-3">
							<div class="form-group">
							<br/>
							  <div class="col-sm-12" style='display:none'>
								    <label><input type="checkbox" name="customer_status" class="check" id='direct_customer' value='1' checked hidden > 
								
								  Create  Customer Id Directly
								  </label>
								</div>
							</div>
							</div>
									
								
				
              </div>
              <!-- /.box-body -->

              <!-- /.box-footer -->
            </div>
			  
          </div>
          </div>
			<div class="box-footer">
					<button type="button" class="btn btn-default ebutton" onclick="backCustomer();">Cancel</button>
					<button type="submit" class="btn btn-info pull-right ebutton submit"  id="csubmit">Submit</button>
			</div>
		
	   
		</form>
		
		</section>
			
			<div class="modal fade" tabindex="-1" role="dialog" id="removeProductModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><i class="glyphicon glyphicon-trash"></i> Remove Product</h4>
      </div>
      <div class="modal-body">

      	<div class="removeProductMessages"></div>

        <p>Do you really want to remove ?</p>
      </div>
      <div class="modal-footer removeProductFooter">
        <button type="button" class="btn btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
        <button type="button" class="btn btn-primary" id="removeProductBtn" data-loading-text="Loading..."> <i class="glyphicon glyphicon-ok-sign"></i> Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- /categories brand -->

          <div class="modal fade" id="cmodalview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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

<div class="modal fade" id="cmodalterminate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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


      <!-- /.row (main row) -->

    </section>
	
		<section class="col-lg-12 "  >
			
			
			
			<div class="box box-info" id="mappedProduct">
            <div class="box-header with-border">
              <h3 class="box-title">Mapped Product</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
			
			
            <div class="box-body">
			
					
          

					
            <div class="table-responsive">
                 
				<table class="table no-margin" id="mappedData" >
                  <thead>
                  <tr>
                    <th colspan="1">Sr.no.</th>
					<th colspan="1">Product Id</th>
					<th colspan="1">Category</th>
					<th colspan="1">Variant</th>
					<th colspan="1">Status</th>
					<th colspan="2" style="text-align:center">Process</th>
				    <th colspan="2" style="text-align:center">Cost</th>
					
				  </tr>
					 <tr>
                    <th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th style="text-align:center">Type</th>
					<th style="text-align:center">Date</th>
				    <th style="text-align:center">Type</th>
					<th style="text-align:center">Cost</th>
					
					</tr>
                  </thead>
                 
                </table>
				</div>
				
				 
				
				<div class="box-footer">
					<button type="button" class="btn btn-default ebutton" onclick="backCustomer();">Cancel</button>
				
			   </div>
              </div>
			  
			  <div class="box-body">
			
					
          

					
       <div class="table-responsive">
                 
				<table class="table no-margin" id="refundData" >
                
                 
                </table>
				</div>
				
				 
				
				<div class="box-footer">
					<button type="button" class="btn btn-default ebutton" onclick="backCustomer();">Cancel</button>
				
			   </div>
              </div>
			  
			   <div class="box-body">
			
					
          

					
       <div class="table-responsive">
                 
				<table class="table no-margin" id="usedData" >
                
                 
                </table>
				</div>
				
				 
				
				<div class="box-footer">
					<button type="button" class="btn btn-default ebutton" onclick="backCustomer();">Cancel</button>
				
			   </div>
              </div>
			  
			   
              <!-- /.table-responsive -->
            </div>

          </div>
		  
		  	  
			  
			
			
			</section>
	 
	         
            </div>
    <!-- /.content -->
  </div>  
  
  	<div class="modal fade" id="closuremodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
	  
				<form class="form-horizontal">
				 <div class="box-body">
			
					<div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Product Id</label>
						  <div class="col-sm-12">
							<input type="text" class="form-control" id="proId"  disabled >
						  </div>				
						</div>	
					</div>	
					<div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Customer Id</label>
						  <div class="col-sm-12">
							<input type="text" class="form-control" id="cusId"  disabled >
						  </div>				
						</div>	
					</div>	
						<div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Closure Date</label>
						  <div class="col-sm-12">
							<input type="date" class="form-control" id="closuredate"   >
						  </div>				
						</div>	
					</div>	
					<div class="form-group">
                  <label for="inputPassword3" class="col-sm-12 control-label">Remarks</label>

                  <div class="col-sm-12">
                    <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>	
                  </div>
                </div>	
				</div>
			</form>	
				
     </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary"  data-dismiss="modal" id="closurepro">Closure</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="refundModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
	  
				<form class="form-horizontal">
				 <div class="box-body">
			
					<div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Product Id</label>
						  <div class="col-sm-12">
							<input type="text" class="form-control" id="r_proId"  disabled >
						  </div>				
						</div>	
					</div>	
					<div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Customer Id</label>
						  <div class="col-sm-12">
							<input type="text" class="form-control" id="r_cId"  disabled >
						  </div>				
						</div>	
					</div>	
						<div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Closure Date</label>
						  <div class="col-sm-12">
							<input type="date" class="form-control" id="r_closuredate"  disabled >
						  </div>				
						</div>	
					</div>	
 
       
 <div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Pennding Amount</label>
						  <div class="col-sm-12">
							<input type="text" class="form-control" id="r_pend"  disabled >
						  </div>				
						</div>	
					</div>	
              <div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Rent Cost</label>
						  <div class="col-sm-12">
							<input type="text" class="form-control" id="r_rent"  disabled >
						  </div>				
						</div>	
					</div>	
                     <div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label"> Advance Amount</label>
						  <div class="col-sm-12">
							<input type="text" class="form-control" id="r_advance"  disabled >
						  </div>				
						</div>	
					</div>	
					 <div class="col-lg-12">	  
						
					
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Refund Amount</label>
						  <div class="col-sm-12">
							<input type="text" class="form-control" id="r_refund"  disabled >
						  </div>				
						</div>	
					</div>	
					<div class="form-group">
                  <label for="inputPassword3" class="col-sm-12 control-label">Remarks</label>

                  <div class="col-sm-12">
                    <textarea class="form-control" rows="3" id="r_remark" placeholder="Enter ..."></textarea>	
                  </div>
                </div>	
				</div>
			</form>	
				
     </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary"  data-dismiss="modal" id="refundProduct">Refund </button>
      </div>
    </div>
  </div>
</div>
  <!-- /.content-wrapper -->
  <?php
  require_once('footer.php');
?>