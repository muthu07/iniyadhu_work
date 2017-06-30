<?php
require_once('header.php');
?>


			  
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	

			  
		<section class="content-header">
		
		
		
			<h1>Variant</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Variant</li>
			</ol>
		</section>
			  
			  
    <!-- Main content -->				
	<section class="content">
		<div class="row">
		<div class="col-lg-12 addvariant">
			<form class="form-horizontal" id="variantform">
				  <div class="box-body">
				  
					<div class="form-group">
					  <label for="svariant" class="col-sm-2 control-label">Product Category</label>
					  <div class="col-sm-2">
						<select class="form-control" id="maincategoryproduct" onchange="variantgotsubcategory();"></select>
					  </div>	
					
					  <label for="variant" class="col-sm-2 control-label">Sub Category</label>
					   <div class="col-sm-2">
						<select class="form-control" id="subcategoryproduct" name="subcategoryproduct"></select>
					  </div>	
					  <label for="variant" class="col-sm-1 control-label">Variant</label>	
					  <div class="col-sm-2">
						<input type="text" id="variantname" name="variantname" class="form-control">
						<div id="varianterror" class="error"></div>	
					  </div>
					  <div class="col-sm-1">
								<label class="chk-lbl"><input type="checkbox" name="statusvariant" id="statusvariant" value="Active"> Status</label><br>
					  </div>
					  	
					</div>

					<div class="form-group">
					  <label for="verantdesct" class="col-sm-2 control-label">Description</label>
					  <div class="col-sm-2">
						<input type="text" id="verantdesct" name="verantdesct" class="form-control">
						<div id="variantdescerror" class="error"></div>	
					  </div>				
					  
					  <label for="variantcode" class="col-sm-2 control-label">Variant Code</label>
					  <div class="col-sm-2">
						<input type="text" id="variantcode" name="variantcode" class="form-control">
						<div id="variantcodeerror" class="error"></div>	
					  </div>
					  	
					</div>								  
					
					
					<div class="box-body">
			
						<div class="pull-right"><a onclick="variantcostadd();" style="cursor:pointer" href="">+</a></div>	
					  <div class="table-responsive">
		 
						<table class="table no-margin" id="variantcostadd">
						  <thead>
						  <tr>
							<th>Rent Cost</th>
							<th>Security Deposite Amount</th>
							<th>Processing Fees</th>
							<th>Ins fees</th>
							<th>Others Fees</th>
							<th>Tenure</th>
							</tr>
						  </thead>
						  <tbody>
							<tr>
								<td><input type="text" id="rendcost1" name="rendcost[]"  class="form-control" placeholder="Rent Cost"></td>
								<td><input type="text" id="depositeamt1" name="depositeamt[]" class="form-control" placeholder="Security Deposite Amount"></td>
								<td><input type="text" id="processingfees1" class="form-control" name="processingfees[]" placeholder="Processing Fees"></td>
								<td><input type="text" id="insfees1" class="form-control" name="insfees[]" placeholder="Ins Fees"></td>
								<td><input type="text" id="othersfees1" class="form-control" name="othersfees[]" placeholder="Others Fees"></td>
								<td><input type="text" id="tenure1" class="form-control" placeholder="Tenure" name="tenure[]"></td>
							</tr>
						  </tbody>
						</table>
					  </div>
					 
					</div>
					
					<button type="submit" class="btn btn-info pull-right" onclick="addvariant()">Add</button>
				 </div>
			</form>	
		</div>	


		<div class="col-lg-12 editvariant" hidden>
			<form class="form-horizontal" name="editvariantform" id="editvariantform">
				  <div class="box-body">
				  
					<div class="form-group">
					  	
					  <label for="editvariantname" class="col-sm-2 control-label">Variant</label>	
					  <div class="col-sm-2">
						<input type="text" id="editvariantname" name="editvariantname" class="form-control">
						<div id="editvariantnameerror" class="error"></div>	
						<input type="hidden" id="editvariantid" name="editvariantid" class="form-control">
					  </div>
					  <div class="col-sm-1">
								<label class="chk-lbl"><input type="checkbox" name="editstatusvariant" id="editstatusvariant" value="Active"> Status</label><br>
							</div>

						<label for="editverantdesct" class="col-sm-1 control-label">Description</label>
					  <div class="col-sm-2">
						<input type="text" id="editverantdesct" name="editverantdesct" class="form-control">
						<div id="editverantdescterror" class="error"></div>	
					  </div>
					  <label for="editverantdesct" class="col-sm-2 control-label">Vendor code</label>
					   <div class="col-sm-2">
						<input type="text" id="editverantcode" name="editverantcode" class="form-control">
						<div id="editvencodeterror" class="error"></div>	
					  </div>
					  	
					</div>					
							
					
					<div class="box-body">
			
						<div class="pull-right"><a onclick="editvariantcostaddtr();" style="cursor:pointer" href="">+</a></div>	
					  <div class="table-responsive">
		 
						<table class="table no-margin" id="editvariantcostadd">
						  <thead>
						  <tr>
							<th>Rent Cost</th>
							<th>Security Deposite Amount</th>
							<th>Processing Fees</th>
							<th>Ins fees</th>
							<th>Others Fees</th>
							<th>Tenure</th>
							</tr>
						  </thead>
						  <tbody>
							
						  </tbody>
						</table>
					  </div>
					 
					</div>
				   
					<button type="submit" class="btn btn-info pull-right" OnClick="noteditvariantdetails()">Back</button>
					<button type="submit" class="btn btn-info pull-right" OnClick="editvariantdetails()" style="margin-right:10px;">Save</button>
					
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
            <!-- /.box-header--> 
			
			
            <div class="box-body">
			
					
              <div class="table-responsive">

					
                <table class="table no-margin" id="varianttable">
                  <thead>
                  <tr>
                    <th>Variant ID</th>
					<th>Category</th>
					<th>Name</th><th>Description</th>
										<th>Status</th>
										<th colspan="2">Action</th>
				  </tr>
                  </thead>
                  <tbody>
                  
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive  -->
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
	function selectmaincategory()
	{
		event.preventDefault();
		var obj=document.getElementById("maincategoryproduct"); 
		$("#maincategoryproduct").empty();
		$.ajax({ url: "config/systemparamaters.php",
			data:{
				"type" : "selectmaincategory"				
			},
			type:"post",
			success: function(data)
				{									
					selectValues = JSON.parse(data);					        
					for (var i = 0; i <= selectValues.length; i++)     {                
						opt = document.createElement("option");
						opt.value =selectValues[i].ptdcatgry_id ;
						opt.text=selectValues[i].name;
						obj.appendChild(opt);
					}				   
					variantgotsubcategory();
				}
			});
	}

// VVAriant Lsist

function variantlist()
	 {	
		$('#varianttable tbody').remove();
		var statusdetails = "";
		event.preventDefault();
		$.ajax({ url: "config/systemparamaters.php",
			data:{
				"type" : "variantlist"				
			},
			type:"post",
			success: function(data)
				{
				  console.log(JSON.parse(data));
				  var data = JSON.parse(data);
				  for (var i=0; i<data.length; i++) {
						var vendorid = data[i].ptdvar_id;
						if(data[i].status == 1)
							statusdetails = '<i class="fa fa-check" aria-hidden="true"></i>';
						else
							statusdetails = '<i class="fa fa-ban" aria-hidden="true"></i>';
						var row = $('<tr><td>' + data[i].ptdvar_id+ '</td><td>' + data[i].name + '</td><td>' + data[i].description + '</td><td>' + statusdetails+ '</td><td><a onClick="deletevariant('+vendorid+');"><i class="fa fa-trash" aria-hidden="true"></i></a></td><td><a onClick="editvariant('+vendorid+');"><i class="fa fa-pencil" aria-hidden="true"></i></a></td></tr>');
						$('#varianttable').append(row);
					}			  
				}
			});
	}


	function noteditvariantdetails()
	{		
		$(".addvariant").show();
	 			$(".editvariant").hide();
	 	event.preventDefault();
	 }

	window.onload = function() {
			selectmaincategory();variantlist();
		}
</script>
<script type="text/javascript">  
  var ctr = 1;
  function variantcostadd() {
    event.preventDefault();    
    ctr++;    
    var rendcost = "rendcost" + ctr;    
    var depositeamt = "depositeamt" + ctr;
	var processingfees = "processingfees" + ctr;    
    var insfees = "insfees" + ctr;
	var othersfees = "othersfees" + ctr;    
    var tenure = "tenure" + ctr;
    var newTr = '<tr><td><input type="text"  class="form-control" id=' + rendcost + ' name="rendcost[]" placeholder="Rent Cost"/></td><td><input name="depositeamt[]"  class="form-control" type="text" id=' + depositeamt + ' placeholder="Security Deposite Amount"/></td><td><input name="processingfees[]"  class="form-control" type="text" id=' + processingfees + ' placeholder="Processing Fees"/></td><td><input name="insfees[]"  class="form-control" type="text" id=' + insfees + ' placeholder="Ins Fees"/></td><td><input name="othersfees[]"  class="form-control" type="text" id=' + othersfees + ' placeholder="Others Fees"/></td><td><input name="tenure[]"  class="form-control" type="text" id=' + tenure + ' placeholder="Tenure"/></td><td> <a class="trnsport_remove" href=""> <i class="fa fa-trash-o" title="Remove Product" aria-hidden="true"></i></a></td></tr>';
    $('#variantcostadd').append(newTr);    
};

var ctr = 1;
function editvariantcostaddtr() {
    event.preventDefault();    
    ctr++;    
    var rendcost = "rendcost" + ctr;    
    var depositeamt = "depositeamt" + ctr;
	var processingfees = "processingfees" + ctr;    
    var insfees = "insfees" + ctr;
	var othersfees = "othersfees" + ctr;    
    var tenure = "tenure" + ctr;
    var newTr = '<tr><td><input type="text"  class="form-control" id=' + rendcost + ' name="rendcost[]" placeholder="Rent Cost"/></td><td><input name="depositeamt[]"  class="form-control" type="text" id=' + depositeamt + ' placeholder="Security Deposite Amount"/></td><td><input name="processingfees[]"  class="form-control" type="text" id=' + processingfees + ' placeholder="Processing Fees"/></td><td><input name="insfees[]"  class="form-control" type="text" id=' + insfees + ' placeholder="Ins Fees"/></td><td><input name="othersfees[]"  class="form-control" type="text" id=' + othersfees + ' placeholder="Others Fees"/></td><td><input name="tenure[]"  class="form-control" type="text" id=' + tenure + ' placeholder="Tenure"/></td><td> <a class="trnsport_remove" href=""> <i class="fa fa-trash-o" title="Remove Product" aria-hidden="true"></i></a></td></tr>';
    $('#editvariantcostadd').append(newTr);    
};

$(document).on('click', '.trnsport_remove', function () {
     event.preventDefault();     
     $(this).closest('tr').remove();
     return false;
  });
  
  
  
  
  
</script>