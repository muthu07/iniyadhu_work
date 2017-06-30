<?php
require_once('header.php');
?>
<div class="content-wrapper">		  
	<section class="content-header">
		<h1>Product Category</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Product Category</li>
			</ol>
	</section>			  
			  
    <section class="content">
		<div class="row addproduct">
			<form class="form-horizontal" id="productform">
				<div class="box-body">
					<div class="col-lg-10">
						<div class="form-group">
							<label for="pcategory" class="col-sm-3 control-label">Category</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="pcategory">
									<div id="pcategoryerror" class="error"></div>	
								</div>
								<div class="col-sm-2">
								<label class="chk-lbl"><input type="checkbox" name="statusnativity" id="statusproduct" value="Active"> Status</label><br>
							</div>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="productdescription">
								<div id="pcategorydescerror" class="error"></div>	
							</div>
						</div>						
					</div>
					<div class="col-lg-1">
						<div class="row add-product pull-right" style="margin-right:12px;">
							<button type="submit" class="btn btn-info" onClick="addproduct()">Add</button>
						</div>
					</div>
				</div>	
			</form>	
		</div>

		<div class="row editproduct" hidden>
			<form class="form-horizontal">
				<div class="box-body">
					<div class="col-lg-9">
						<div class="form-group">
							<label for="pcategory" class="col-sm-3 control-label">Category</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="editpcategory">
									<div id="epcategoryerror" class="error"></div>	
									<input type="hidden" class="form-control" id="editpid">
								</div>
								<div class="col-sm-2">
								<label class="chk-lbl"><input type="checkbox" name="editstatusproduct" id="editstatusproduct" value="Active"> Status</label><br>
							</div>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="editproductdescription">
								<div id="epcategorydescerror" class="error"></div>	
							</div>
						</div>						
					</div>
					<div class="col-lg-2">
						<div class="row add-product pull-right" >
							<button type="submit" class="btn btn-info" onClick="editproductdetails()" style="margin-right:10px;">Save</button>
							<button type="submit" class="btn btn-info" onClick="noteditproductdetails()">Back</button>
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

					
                <table class="table no-margin" id="productcattable">
                  <thead>
                  <tr>
                    <th>Category ID</th>
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
	 function gotproductcatlist()
	 {	
		$('#productcattable tbody').remove();
		var statusdetails = "";
		event.preventDefault();
		$.ajax({ url: "config/systemparamaters.php",
			data:{
				"type" : "productcatlist"				
			},
			type:"post",
			success: function(data)
				{
				  console.log(JSON.parse(data));
				  var data = JSON.parse(data);
				  for (var i=0; i<data.length; i++) {
						var vendorid = data[i].ptdcatgry_id;
						if(data[i].status == 1)
							statusdetails = '<i class="fa fa-check" aria-hidden="true"></i>';
						else
							statusdetails = '<i class="fa fa-ban" aria-hidden="true"></i>';
						var row = $('<tr><td>' + data[i].ptdcatgry_id+ '</td><td>' + data[i].name + '</td><td>' + data[i].description + '</td><td>' + statusdetails+ '</td><td><a onClick="deleteproduct('+vendorid+');"><i class="fa fa-trash" aria-hidden="true"></i></a></td><td><a onClick="editproduct('+vendorid+');"><i class="fa fa-pencil" aria-hidden="true"></i></a></td></tr>');
						$('#productcattable').append(row);
					}			  
				}
			});
	}
		
		window.onload = function() {
			gotproductcatlist();
		}
		
</script>