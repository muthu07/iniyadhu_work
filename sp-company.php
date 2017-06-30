<?php
require_once('header.php');
?>


			  
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	

			  
		<section class="content-header">
		
		
		
			<h1>Company</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Company</li>
			</ol>
		</section>

		  
			  
    <!-- Main content -->				
	<section class="content">
		<div class="row">
		<div class="col-lg-12 addcompany">
			<form class="form-horizontal" id="companyform">
				  <div class="box-body">
				  		  
					<div class="form-group">
					  <label for="companyname" class="col-sm-2 control-label">Company</label>

					 <div class="col-sm-3">
						<input type="text" class="form-control" id="companyname">
						<div id="companyerror" class="error"></div>
					  </div>
					  <div class="col-sm-1">
								<label class="chk-lbl"><input type="checkbox" name="statusnativity" id="companystatus" value="Active"> Status</label><br>
							</div>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="cmpydesc">
								<div id="companydescerror" class="error"></div>
							</div>
						  <div class="col-sm-2">
						  <button type="submit" class="btn btn-info pull-right" onclick="addcompany()">Add</button>	
						  </div>				  
					</div>				  
					
				 </div>
			</form>	
		</div>	

		<div class="col-lg-12 editcmpany" hidden>
			<form class="form-horizontal">
				  <div class="box-body">
				  		  
					<div class="form-group">
					  <label for="companyname" class="col-sm-2 control-label">Company</label>

					 <div class="col-sm-3">
						<input type="text" class="form-control" id="editcompanyname">
						<div id="ecompanyerror" class="error"></div>
						<input type="hidden" class="form-control" id="editcompanyid">
					  </div>
					  <div class="col-sm-1">
								<label class="chk-lbl"><input type="checkbox" name="statusnativity" id="editcompanystatus" value="Active"> Status</label><br>
							</div>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="editcmpydesc">
								<div id="ecompanydescerror" class="error"></div>
							</div>
						  <div class="col-sm-2">
						  <button type="submit" class="btn btn-info pull-right" onclick="noteditcompany()">Back</button>	
						  <button type="submit" class="btn btn-info pull-right" onclick="editcompanydetails()" style="margin-right:10px;">Save</button>	
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
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
			
			
            <div class="box-body">
			
					
              <div class="table-responsive">

					
                <table class="table no-margin" id="companylist">
                  <thead>
                  <tr>
                    <th>Company ID</th>
					<th>Name</th><th>Description</th>
										<th>Status</th>
										<th colspan="2">Action</th>
				  </tr>
                  </thead>
                  <tbody>
				  
				  
	  
				  
				  
                  
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
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

<script>
//Got the zone
	 function listcompany()
	 {	
		$('#companylist tbody').remove();
		var statusdetails = "";
		event.preventDefault();
		$.ajax({ url: "config/systemparamaters.php",
			data:{
				"type" : "companylist"				
			},
			type:"post",
			success: function(data)
				{
				  console.log(JSON.parse(data));
				  var data = JSON.parse(data);
				  for (var i=0; i<data.length; i++) {
						var vendorid = data[i].id;
						if(data[i].status == 1)
							statusdetails = '<i class="fa fa-check" aria-hidden="true"></i>';
						else
							statusdetails =  '<i class="fa fa-ban" aria-hidden="true"></i>';
						var row = $('<tr><td>' + data[i].id+ '</td><td>' + data[i].name + '</td><td>' + data[i].description + '</td><td>' + statusdetails+ '</td><td><a onClick="deletecompany('+vendorid+');"><i class="fa fa-trash" aria-hidden="true"></i></a></td><td><a onClick="editcompany('+vendorid+');"><i class="fa fa-pencil" aria-hidden="true"></i></a></td></tr>');
						$('#companylist').append(row);
					}			  
				}
			});
	}
		
	
		window.onload = function() {
			listcompany();			
		}
		
</script>