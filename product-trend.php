<?php
require_once('header.php');
?>


			  
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
	

			  
		<section class="content-header">
		
		
		
			<h1>Product Trend</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Product Trend</li>
			</ol>
		</section>
		
				  
    <!-- Main content -->				
	<section class="content">
		<div class="row">
		
			<form class="form-horizontal">
				  <div class="box-body">
				  <fieldset>
				 <legend></legend>
				  	<div class="col-lg-4">
						<div class="form-group">
						   <div class="col-sm-12">
							<select class="form-control" id="ptrend">
							<option>Variant</option>
							<option>Variant</option>
							<option>Variant</option>
						  </select>
						  </div>				
						</div>
						<div class="form-group">
						   <div class="col-sm-12">
							<select class="form-control" id="vintage">
							<option>Vintage</option>
							<option>Vintage</option>
							<option>Vintage</option>
						  </select>
						  </div>				
						</div>
					</div>	
					<div class="col-lg-4">
						<div class="form-group">
						   <div class="col-sm-12">
							<select class="form-control" id="ptrend">
							<option>Brand</option>
							<option>Brand</option>
							<option>Brand</option>
						  </select>
						  </div>				
						</div>
						<button type="submit" class="btn btn-info">Go</button>	
					</div>	
					<div class="col-lg-4">
						<div class="form-group">
						   <div class="col-sm-12">
							<select class="form-control" id="ptrend">
							<option>Vendor</option>
							<option>Vendor</option>
							<option>Vendor</option>
						  </select>
						  </div>				
						</div>
					</div>	
				 </fieldset>	
			 </div>
			</form>	
				
		
		<div class="row searchspace">
               <!--  <div class="col-lg-6"><button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
             Export to Excel
          </button>
                </div> -->
                <!-- /.col-lg-6 -->
               <!--  <div class="col-lg-4">
			<div class="input-group">
				  <input type="text" name="q" class="form-control" placeholder="Search...">
					  <span class="input-group-btn">
						<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
						</button>
					  </span>
			</div>
                </div> -->
				<div class="col-lg-2 pull-right">
					<select class="form-control" id="csvintage" onchange="reportProductTrendSummary(this.value)" >
							<option>2016</option>
							<option>2017</option>
							<option>2018</option>
							<option>2019</option>
							<option>2020</option>
							</select>
                </div>
                <!-- /.col-lg-6 -->
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

					
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>Month</th>
					<th>New Products</th>
				    <th>Purchace Cost</th>
					<th>Mapped </th>
					<th>Closed </th>
				
				  </tr>
                  </thead>
                  <tbody>
				  
				  
<tr>
<td>January</td>
<td><span id="n_p1"></span></td>
<td><span id="p_c1"></span></td>
<td><span id="m1"></span></td>
<td><span id="c1"></span></td>
</tr>

				  
<tr>
<td>February</td>
<td><span id="n_p2"></span></td>
<td><span id="p_c2"></span></td>
<td><span id="m2"></span></td>
<td><span id="c2"></span></td>
</tr>


<tr>
<td>March</td>
<td><span id="n_p3"></span></td>
<td><span id="p_c3"></span></td>
<td><span id="m3"></span></td>
<td><span id="c3"></span></td>
</tr>



<tr>
<td>April</td>
<td><span id="n_p4"></span></td>
<td><span id="p_c4"></span></td>
<td><span id="m4"></span></td>
<td><span id="c4"></span></td>
</tr>

<tr>
<td>may</td>
<td><span id="n_p5"></span></td>
<td><span id="p_c5"></span></td>
<td><span id="m5"></span></td>
<td><span id="c5"></span></td>
</tr>


<tr>
<td>June</td>
<td><span id="n_p6"></span></td>
<td><span id="p_c6"></span></td>
<td><span id="m6"></span></td>
<td><span id="c6"></span></td>
</tr>

<tr>
<td>Jully </td>
<td><span id="n_p7"></span></td>
<td><span id="p_c7"></span></td>
<td><span id="m7"></span></td>
<td><span id="c7"></span></td>
</tr>

<tr>
<td>August</td>
<td><span id="n_p8"></span></td>
<td><span id="p_c8"></span></td>
<td><span id="m8"></span></td>
<td><span id="c8"></span></td>
</tr>

<tr>
<td>September</td>
<td><span id="n_p9"></span></td>
<td><span id="p_c9"></span></td>
<td><span id="m9"></span></td>
<td><span id="c9"></span></td>
</tr>

<tr>
<td>October</td>
<td><span id="n_p10"></span></td>
<td><span id="p_c10"></span></td>
<td><span id="m10"></span></td>
<td><span id="c10"></span></td>
</tr>

<tr>
<td>November</td>
<td><span id="n_p11"></span></td>
<td><span id="p_c11"></span></td>
<td><span id="m11"></span></td>
<td><span id="c11"></span></td>
</tr>
<td>December</td>
<td><span id="n_p12"></span></td>
<td><span id="p_c12"></span></td>
<td><span id="m12"></span></td>
<td><span id="c12"></span></td>
</tr>
  
  
				  
				  
				  
                  
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
  require_once('footer.php');?>