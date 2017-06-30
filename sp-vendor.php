<?php
require_once('header.php');
?>		  
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<section class="content-header">
			<h1>Vendor</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Vendor</li>
			</ol>
		</section>
	    <!-- Main content -->				
		<section class="content">
			<div class="row">
				<div class="col-lg-10 addvendor" >
					<form class="form-horizontal" id="vendorform">
						<div class="box-body">
							<div class="form-group">
								<label for="vendor" class="col-sm-2 control-label">Vendor Name</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="vendor">
									<div id="vendorerror" class="error"></div>	
								</div>
								<div class="col-sm-2">
									<label class="chk-lbl"><input type="checkbox" name="statusvendor" id="statusvendor" value="Active"> Status</label><br>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="vendordescription">
									<div id="vendordescerror" class="error"></div>	
								</div>
								<button type="submit" class="btn btn-info pull-right" onClick="vendoradd()">Add</button>									
							</div>				  
						</div>
					</form>	
				</div>

				<div class="col-lg-12 editvendor" hidden>
					<form class="form-horizontal">
						<div class="box-body">
							<div class="form-group">
								<label for="vendor" class="col-sm-2 control-label">Vendor Name</label>
								<div class="col-sm-3">
									<input type="hidden" class="form-control" id="vendorid">
									<input type="text" class="form-control" id="vendorname">
									<div id="evendorerror" class="error"></div>	
								</div>
								<div class="col-sm-1">
									<label class="chk-lbl"><input type="checkbox" name="editstatusvendor" id="editstatusvendor" value="Active"> Status</label><br>
								</div>
								<div class="col-sm-3">									
									<input type="text" class="form-control" id="editvendordescription">
									<div id="evendordescerror" class="error"></div>	
								</div>
								<div class="col-sm-2">									
								<button type="submit" class="btn btn-info pull-right" onClick="notedit()">Back</button>
								<button type="submit" class="btn btn-info pull-right" onClick="editvendordata()"  style="margin-right:10px;">Save</button>									
								</div>
							</div>				  
						</div>
					</form>
					
				</div>					
		
			<section class="col-lg-12 connectedSortable ui-sortable">
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title"></h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>						</button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
						</div>
					</div>
					<div class="box-body">				
						<div class="table-responsive">
							<table class="table no-margin"  id="myTable">
								<thead>
									<tr>
										<th>Vendor ID</th>
										<th>Name</th>
										<th>Description</th>
										<th>Status</th>
										<th colspan="2">Action</th>
									</tr>
								</thead>
								<tbody>
							    </tbody>
							</table>
						</div>              
					</div>
				</div>	
			
			</section>
          
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
	function vendorlist(){
		$('#myTable tbody').empty();	 	
		$.ajax({ 
			url:'config/systemparamaters.php',
			data:{
				"type" : "vendorlist"				
			},
			type:"post",
			success:function(data){
				data = JSON.parse(data);
				var status;		
				for (var i=0; i<data.length; i++) {
					var vendorid = data[i].vendor_id;
					if( data[i].status ==1)
						status = '<i class="fa fa-check" aria-hidden="true"></i>';
					else
						status ='<i class="fa fa-ban" aria-hidden="true"></i>';
           		    var row = $('<tr><td>' + data[i].vendor_id+ '</td><td>' + data[i].name + '</td><td>' + data[i].description + '</td><td>' + status + '</td><td><a onClick="deletevendor('+vendorid+')"><i class="fa fa-trash" aria-hidden="true"></i></a></td><td><a onClick="editvendor('+vendorid+')"><i class="fa fa-pencil" aria-hidden="true"></i></a></td></tr>');
           		 $('#myTable').append(row);
        		}
			}
		  });				
	 }

	$( window ).load(function() { 	
		vendorlist();
	});

</script>