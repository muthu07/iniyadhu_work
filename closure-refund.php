<?php
require_once('header.php');
?>


			  
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	  
		<section class="content-header">

			<h1>Refund</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Refund</li>
			</ol>
		</section>
		
				  
    <!-- Main content -->				
	<section class="content">
		<div class="row">
				

			
				
			<!-- <div class="row searchspace">
                <div class="col-lg-12"><button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
             Export to Excel
          </button>
                </div>-->
                <!-- /.col-lg-6 
               
                <!-- /.col-lg-6 
              </div>-->
				
							
        		<section class="col-lg-12 connectedSortable ui-sortable" id="Customer_tab_view">
			
			
			
			<div class="box box-info" id="listofproductable">
            <div class="box-header with-border">
              <h3 class="box-title">Return List</h3>

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
				<table id="mappedList" class="display" cellspacing="0" width="100%">
				 <thead>
					  <tr>
						 <th><input name="select_all" value="1" type="checkbox"></th>
						 <th>Product ID</th>
						 <th>CUSTOMER ID</th>
						 <th>Closure Date</th>
						
						 <th>Action</th>
					  </tr>
				  </thead>
				  <tfoot>
					  <tr>
						 <th></th>
						 <th>Product ID</th>
						 <th>CUSTOMER ID</th>
						 <th>Return Date</th>
						
						
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
				  	<div class="col-lg-6">	  
						<div class="form-group">
						  <label for="advance" class="col-sm-5 control-label">Advance</label>
						 <div class="col-sm-6">
							<input type="text" class="form-control" id="advance" value="15000" disabled >
						  </div>
						</div>
						<div class="form-group">
						  <label for="ocharge" class="col-sm-5 control-label">Other Charges</label>
						 <div class="col-sm-6">
							<input type="text" class="form-control" id="ocharge" value="500" disabled >
						  </div>
						</div>	
						<div class="form-group">
						  <label for="" class="col-sm-5 control-label">Payment By</label>
						  <div class="col-sm-6">
							<select class="form-control">
							<option>Cash</option>
							<option>Cash</option>
						  </select>
						  </div>				
						</div>							
					</div>	
					<div class="col-lg-6">	  
						<div class="form-group">
						  <label for="outstand" class="col-sm-5 control-label">Outstanding </label>
						 <div class="col-sm-6">
							<input type="text" class="form-control" id="outstand" value="2000" disabled >
						  </div>
						</div>	
						<div class="form-group">
						  <label for="btp" class="col-sm-5 control-label">Balance to Pay </label>
						 <div class="col-sm-6">
							<input type="text" class="form-control" id="btp" value="12500" disabled >
						  </div>
						</div>	
						<div class="form-group">
						  <label for="closuredate" class="col-sm-5 control-label">Closure Date</label>
						  <div class="col-sm-6">
							<input type="text" class="form-control" id="closuredate" value="10/04/2017" disabled >
						  </div>				
						</div>	
					</div>	
					<div class="form-group">
                  <label for="inputPassword3" class="col-sm-3 control-label">Remarks</label>

                  <div class="col-sm-9">
                    <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>	
                  </div>
                </div>	
				</div>
			</form>	
				
     </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Go</button>
      </div>
    </div>
  </div>
</div>
			<div class="modal fade" id="closureclose" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">  <div class="modal-dialog" role="document">    <div class="modal-content">      <div class="modal-header">        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>        <h4 class="modal-title" id="myModalLabel">Modal title</h4>      </div>      <div class="modal-body remark ">	  				<div class="form-group">                  <label for="inputPassword3" class="col-sm-3 control-label">Remarks</label>                  <div class="col-sm-9">                    <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>	                  </div>                </div>					     </div>      <div class="modal-footer">        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>        <button type="button" class="btn btn-primary">Submit</button>      </div>    </div>  </div></div>
						
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