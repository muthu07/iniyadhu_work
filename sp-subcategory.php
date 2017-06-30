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
		<div class="row addsubproduct">
			<form class="form-horizontal" id="addsubcategoryform">
				<div class="box-body">
					<div class="col-lg-10">
						<div class="form-group">
							<label for="pcategory" class="col-sm-1 control-label">Category</label>
								<div class="col-sm-3">
									<select class="form-control" id="maincategorylist">
									</select>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="subcategoryname">
									<div id="subcatgryerror" class="error"></div>	
								</div>
								<div class="col-sm-2">
								<label class="chk-lbl"><input type="checkbox" name="subcatstatus" id="subcatstatus" value="Active"> Status</label><br>
							</div>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="subcatdescription">
								<div id="subcatgrydescerror" class="error"></div>	
							</div>
						</div>						
					</div>
					<div class="col-lg-1">
						<div class="row add-product pull-right" style="margin-right:12px;">
							<button type="submit" class="btn btn-info" onClick="addsubcatproduct()">Add</button>
						</div>
					</div>
				</div>	
			</form>	
		</div>

		<div class="row editsubproduct" hidden>
			<form class="form-horizontal">
				<div class="box-body">
					<div class="col-lg-8">
						<div class="form-group">
							<label for="pcategory" class="col-sm-1 control-label">Category</label>								
								<div class="col-sm-3">
								<input type="hidden" class="form-control" id="editsubcategorylist">
								<input type="text" class="form-control" id="editsubcategoryname">
								<div id="esubcatgryerror" class="error"></div>	
								</div>
								<div class="col-sm-2">
									<label class="chk-lbl"><input type="checkbox" name="editsubcatstatus" id="editsubcatstatus" value="Active"> Status</label><br>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="editsubcatdescription">
									<div id="esubcatgrydescerror" class="error"></div>	
								</div>
						</div>						
					</div>
					<div class="col-lg-2">
						<div class="row add-product pull-right" >
							<button type="submit" class="btn btn-info" onClick="editsubproductdetails()" style="margin-right:10px;">Save</button>
							<button type="submit" class="btn btn-info pull-right" onClick="noteditsubcat()">Back</button>
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

					
                <table class="table no-margin" id="productsubcattable">
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
	function selectmaincategory()
	{
		event.preventDefault();
		var obj=document.getElementById("maincategorylist"); 
		$("#maincategorylist").empty();
		$.ajax({ url: "config/systemparamaters.php",
			data:{
				"type" : "selectmaincategory"				
			},
			type:"post",
			success: function(data)
				{
					console.log(JSON.parse(data));
					selectValues = JSON.parse(data);					        
					for (var i = 0; i <= selectValues.length; i++)     {                
						opt = document.createElement("option");
						opt.value =selectValues[i].id ;
						opt.text=selectValues[i].name;
						obj.appendChild(opt);
					}				   
				}
			});
	}
	
	//Got the zone
	 function gotproductsubcatlist()
	 {	
		$('#productsubcattable tbody').remove();
		var statusdetails = "";
		event.preventDefault();
		$.ajax({ url: "config/systemparamaters.php",
			data:{
				"type" : "productsubcatlist"				
			},
			type:"post",
			success: function(data)
				{
				  console.log(JSON.parse(data));
				  var data = JSON.parse(data);
				  for (var i=0; i<data.length; i++) {
						var prsubid = data[i].pr_sub_id;
						if(data[i].status == 1)
							statusdetails =  '<i class="fa fa-check" aria-hidden="true"></i>';
						else
							statusdetails = '<i class="fa fa-ban" aria-hidden="true"></i>';
						var row = $('<tr><td>' + data[i].pr_sub_id+ '</td><td>' + data[i].pr_sub_name + '</td><td>' + data[i].description + '</td><td>' + statusdetails+ '</td><td><a onClick="deletesubproductcat('+prsubid+');"><i class="fa fa-trash" aria-hidden="true"></i></a></td><td><a onClick="editsubcatproduct('+prsubid+');"><i class="fa fa-pencil" aria-hidden="true"></i></a></td></tr>');
						$('#productsubcattable').append(row);
					}			  
				}
			});
	}
		
		window.onload = function() {
			selectmaincategory();
			gotproductsubcatlist();
		}
		
</script>