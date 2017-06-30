<?php
require_once('header.php');
?>


			  
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	  
		<section class="content-header">

			<h1>Service Request</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Service Request</li>
			</ol>
		</section>
		
				  
    <!-- Main content -->				
	<section class="content">
		<div class="row">
				
		<form class="form-horizontal" id="serviceinitiate">
				 <div class="box-body">
				  	<div class="col-lg-5">	  
						<div class="form-group">
						  <label for="customermblid" class="col-sm-3 control-label">Customer ID</label>
						 <div class="col-sm-6">
							<input type="text" class="form-control" id="customermblid" name="customermblid" onblur="gotprodtforcusts(this);" placeholder="Customer ID / Mobile">
							<div id="customererror" class="error"></div>	
						  </div>
						</div>	
					</div>	
					<div class="col-lg-1 choice">
					<label>(or)</label>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
						  <label for="productid" class="col-sm-3 control-label">Product ID</label>
						 <div class="col-sm-6">
							<input type="text" class="form-control" id="productid" onblur="gotprodtidforcusts(this);">
							<div id="producterror" class="error"></div>	
						  </div>
						</div>	
					</div>					
					
				 </div>
			</form>	
							
        	<section class="col-lg-12 connectedSortable ui-sortable">
		
			<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
			
			
            <div class="box-body">
			
			<div class="table-responsive">

					
                <table class="table no-margin" id="serviceproductlistcus">
                  <thead>
                  <tr>
                    <th>Customer Name</th>
					<th>Product</th>
					<th>Action</th>
					</tr>
                  </thead>
                  <tbody>
				                    
                  </tbody>
                </table>
              </div>
              </div>
	    </div>
	    </section>
		<section class="addbutton">
			<div class="col-lg-12 serviceadd">
			  <button type="submit" class="btn btn-info">Add</button>	
			</div>
		</section>
		 

		 <!-- Service Initiative-->
		 <div id="serviceinitmodal" class="modal fade" role="dialog">
  			<div class="modal-dialog">
			   <div class="modal-content">
      				<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal">&times;</button>
        				<h4 class="modal-title">Modal Header</h4>
      				</div>
      				<div class="modal-body">
      				<form id="serviceinitiaprocess">
        				<div class="row">
							<div class="col-lg-4">
								<div class="form-group">
								  <label for="maincategorylist" class="col-sm-12 control-label">Service Initiate Date</label>
								  <div class="col-sm-12">
									<input class="form-control"  type="date" name="serviceinitiativdate" id="serviceinitiativdate">
									<div id="serviceiniterror" class="error"></div>										
									<input class="form-control"  type="hidden" name="serviceproductid" id="serviceproductid">					
									<input class="form-control"  type="hidden" name="servicecustid" id="servicecustid">	
								  </div>				
								</div>
							</div>
							<div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Issue</label>					 	
									 <div class="col-sm-12">
									<input class="form-control"  type="text" name="serviceissue" id="serviceissue">
									<div id="serviceissueerror" class="error"></div>	
									</div>
							  </div>
							  </div>
							  
							  <div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Remarks</label>					 	
									 <div class="col-sm-12">
									<input class="form-control"  type="text" name="serviceremarks" id="serviceremarks">
									<div id="serviceremarkserror" class="error"></div>	
									</div>
							  </div>
							  </div>
					  </div>
					  <br/>
					  <button type="button" class="btn btn-default pull-right" onclick="serviceinitiaprocess()">Save</button>

					  <br/>
					 </form>
      				</div>
      				<div class="modal-footer">
        				
        				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      				</div>
    			</div>
    		</div>
		</div>



		 <!-- Service Close-->
		 <div id="serviceclosemodal" class="modal fade" role="dialog">
  			<div class="modal-dialog">
			   <div class="modal-content">
      				<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal">&times;</button>
        				<h4 class="modal-title">Service Close</h4>
      				</div>
      				<div class="modal-body">
      				<form id="servicecloseprocess">
        				<div class="row">
							<div class="col-lg-4">
								<div class="form-group">
								  <label for="maincategorylist" class="col-sm-12 control-label">Service 
								  by</label>
								  <div class="col-sm-12">
								  	<select class="form-control" name="serviced_by" id="serviced_by">									 
									 </select>	
									
									<input class="form-control"  type="hidden" name="serviceproductidclose" id="serviceproductidclose">					
								  </div>				
								</div>
							</div>
							<div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Service Amount</label>					 	
									 <div class="col-sm-12">
									<input class="form-control"  type="text" name="service_amount" id="service_amount">
									<div id="service_amounterror" class="error"></div>	
									</div>
							  </div>
							  </div>
							  
							  <div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Service From Date</label>					 	
									 <div class="col-sm-12">
									<input class="form-control"  type="date" name="servicefrom_date" id="servicefrom_date">
									<div id="servicefrom_dateerror" class="error"></div>	
									</div>
							  </div>
							  </div>
					  </div>
					  <br/>
					  <div class="row">
							<div class="col-lg-4">
								<div class="form-group">
								  <label for="maincategorylist" class="col-sm-12 control-label">Service to Date</label>
								  <div class="col-sm-12"> 
									<input class="form-control"  type="date" name="serviceto_date" id="serviceto_date">	<div id="serviceto_dateerror" class="error"></div>											
								  </div>				
								</div>
							</div>
							<div class="col-lg-4">
								<div class="form-group">
								  <label for="maincategorylist" class="col-sm-12 control-label"></label>
								  <div class="col-sm-12">
									<label class="ser_request"><input type="checkbox" name="iswaiver" id="iswaiver" value="1"> Is Waiver</label><br>
								</div>				
								</div>
							</div>



							<div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Service Waiver from Date</label>					 	
									 <div class="col-sm-12">
									<input class="form-control"  type="date" name="servicewaiver_from_date" id="servicewaiver_from_date">
									<div id="servicewaiver_from_dateerror" class="error"></div>	
									</div>
							  </div>
							  </div>							  
							  
					  </div>
					  <br/>
					  <div class="row">
					  		<div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Service Waiver to Date</label>					 	
									 <div class="col-sm-12">
									<input class="form-control"  type="date" name="waiver_to_date" id="waiver_to_date">
									<div id="waiver_to_dateerror" class="error"></div>	
									</div>
							  </div>
							  </div>

							<div class="col-lg-4">
								<div class="form-group">
								  <label for="customerfeetback" class="col-sm-12 control-label">Customer Feedback</label>
								  <div class="col-sm-12"> 
									<input class="form-control" id="customerfeetback" name="customerfeetback" >  
									<div id="customerfeederror" class="error"></div>	
								  </div>				
								</div>
							</div>
							<div class="col-lg-4">
								<div class="form-group">
								  <label for="ispaid" class="col-sm-12 control-label"></label>
								  <div class="col-sm-12">
									<label class="ser_request"><input type="checkbox" name="ispaid" id="ispaid" value="1"> Is Paid</label><br>
								</div>				
								</div>
							</div>	
														  
							  
					  </div>
					  <br/>
					  <div class="row">
					  		<div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Received Amount</label>					 	
									 <div class="col-sm-12">
									<input class="form-control"  type="text" name="received_ammout" id="received_ammout">
									<div id="received_ammouterror" class="error"></div>	
									</div>
							  </div>
							  </div>

					  		<div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Payment mode</label>				 	
									 <div class="col-sm-12">
									 <select class="form-control" name="paymentmode" id="paymentmode">
									 <option value="cash"> Cash</option>
									 <option value="card">Card</option>
									 <option value="online">Online Transaction</option>
									 </select>									
									</div>
							  </div>
							  </div>

							<div class="col-lg-4">
								<div class="form-group">
								  <label for="maincategorylist" class="col-sm-12 control-label">Collected On</label>
								  <div class="col-sm-12"> 
									<input class="form-control"  type="date" name="colected_on" id="colected_on">
									<div id="colected_onerror" class="error"></div>	
								  </div>				
								</div>
							</div>
							 
													 
					  </div>
					  <br/>
					  <div class="row">
					  	<div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Collected By</label>				 	
									 <div class="col-sm-12">
									 <select class="form-control" name="collectedby" id="collectedby">									 
									 </select>									
									</div>
							  </div>
							  </div>
					  	<div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Deposit on</label>					 	
									 <div class="col-sm-12">
									<input class="form-control"  type="date" name="deposit_on" id="deposit_on">
									<div id="deposit_onerror" class="error"></div>	
									</div>
							  </div>
							  </div>
							  <div class="col-lg-4">
								<div class="form-group">
									<label for="variant" class="col-sm-12 control-label">Deposit by</label>					 	
									 <div class="col-sm-12">
									<select class="form-control" name="deposit_by" id="deposit_by">									 
									 </select>
									</div>
							  </div>
							  </div>

					  </div>
					  <br/>
					  <button type="button" class="btn btn-default pull-right" onclick="servicecloseprocess()">Save</button>

					  <br/>
					 </form>
      				</div>
      				<div class="modal-footer">
        				
        				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
<script type="text/javascript">
//State 
	 function employeelist()
	 {			
		var statusdetails = "";
		event.preventDefault();
		$.ajax({ url: "config/productadd.php",
			data:{
				"type" : "employeelist"				
			},
			type:"post",
			success: function(data)
				{
				  var sel = $("#deposit_by");
					data = JSON.parse(data);				 
					sel.empty();
				    for (var i=0; i<data.length; i++) {
				      sel.append('<option value="' + data[i].id + '">' + data[i].name + '</option>');
				    }				  
				}
			});
	}

	 function employeelist1()
	 {			
		var statusdetails = "";
		event.preventDefault();
		$.ajax({ url: "config/productadd.php",
			data:{
				"type" : "employeelist"				
			},
			type:"post",
			success: function(data)
				{
				  var sel = $("#collectedby");
					data = JSON.parse(data);				 
					sel.empty();
				    for (var i=0; i<data.length; i++) {
				      sel.append('<option value="' + data[i].id + '">' + data[i].name + '</option>');
				    }				  
				}
			});
	}

	 function employeelist2()
	 {			
		var statusdetails = "";
		event.preventDefault();
		$.ajax({ url: "config/productadd.php",
			data:{
				"type" : "employeelist"				
			},
			type:"post",
			success: function(data)
				{
				  var sel = $("#serviced_by");
					data = JSON.parse(data);				 
					sel.empty();
				    for (var i=0; i<data.length; i++) {
				      sel.append('<option value="' + data[i].id + '">' + data[i].name + '</option>');
				    }				  
				}
			});
	}


</script>