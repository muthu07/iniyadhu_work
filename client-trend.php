<?php
require_once('header.php');
?>


			  
<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		  
		<section class="content-header">
		
			<h1>Client Summary (Count)</h1>
			<ol class="breadcrumb">
				<li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Client Summary</li>
			</ol>
		</section>
		
				  
    <!-- Main content -->				
	<section class="content">
		<div class="row">
		
			<form class="form-horizontal">
				  <div class="box-body">
				  <fieldset>
				 <legend></legend>
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
                               <div class="row">
							   
									<div class="col-lg-3">	
									<div class="form-group">
									  <label for="enquiryemail" class="col-sm-12 control-label">Age</label>
									 <div class="col-sm-12">
										<input type="text" class="form-control" id="age" placeholder="Age" name='c_email' onchange="existingCheck(this.value,'email')" >
										<div id="amailerror" class="error"></div>	
									  </div>
																		  
									</div>
									</div>
									<div class="col-lg-3" >
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
										  <input type="radio" name="c_mart_status" id="optionsRadios1" value="0" checked="">
										  Single
										</label>
										 <label>
										  <input type="radio" name="c_mart_status" id="optionsRadios2" value="1">
										  Married
										</label>
									  </div>
									</div>
									</div>
									
									
						
									
										<div class="col-lg-3">	
									<div class="form-group">
									
									 <div class="col-sm-12">
											<button type="submit" class="btn btn-info" style="margin-top:15px;">Go</button>
										<div id="amailerror" class="error"></div>	
									  </div>
																		  
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
            <!--    <div class="col-lg-4">
			<div class="input-group">
				  <input type="text" name="q" class="form-control" placeholder="Search...">
					  <span class="input-group-btn">
						<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
						</button>
					  </span>
			</div>
                </div> -->
				<div class="col-lg-2 pull-right">
					<select class="form-control " id="csvintage" onchange="reportCustmerTrendSummary(this.value)">
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

					
                <table class="table no-margin" id="client_summarry">
                  <thead>
                  <tr>
                    <th>Month</th>
					<th>Opening</th>
					<th>Additions</th>
					<th>Closing</th>
				  </tr>
                  </thead>
                  <tbody>
				  
				  
<tr>
<td>January</td>
<td><span id="c_opn1"></span></td>
<td><span id="c_add1"></span></td>
<td><span id="c_clo1"></span></td>
</tr>

				  
<tr>
<td>February</td>
<td><span id="c_opn2"></span></td>
<td><span id="c_add2"></span></td>
<td><span id="c_clo2"></span></td>
</tr>


<tr>
<td>March</td>
<td><span id="c_opn3"></span></td>
<td><span id="c_add3"></span></td>
<td><span id="c_clo3"></span></td>
</tr>

<tr>
<td>April</td>
<td><span id="c_opn4"></span></td>
<td><span id="c_add4"></span></td>
<td><span id="c_clo4"></span></td>
</tr>

<tr>
<td>May</td>
<td><span id="c_opn5"></span></td>
<td><span id="c_add5"></span></td>
<td><span id="c_clo5"></span></td>
</tr>

<tr>
<td>June</td>
<td><span id="c_opn6"></span></td>
<td><span id="c_add6"></span></td>
<td><span id="c_clo6"></span></td>
</tr>


<tr>
<td>July</td>
<td><span id="c_opn7"></span></td>
<td><span id="c_add7"></span></td>
<td><span id="c_clo7"></span></td>
</tr>

<tr>
<td>August</td>
<td><span id="c_opn8"></span></td>
<td><span id="c_add8"></span></td>
<td><span id="c_clo8"></span></td>
</tr>

<tr>
<td>September</td>
<td><span id="c_opn9"></span></td>
<td><span id="c_add9"></span></td>
<td><span id="c_clo9"></span></td>
</tr>

<tr>
<td>October</td>
<td><span id="c_opn10"></span></td>
<td><span id="c_add10"></span></td>
<td><span id="c_clo10"></span></td>
</tr>

<tr>
<td>November</td>
<td><span id="c_opn11"></span></td>
<td><span id="c_add11"></span></td>
<td><span id="c_clo11"></span></td>
</tr>

<tr>
<td>December</td>
<td><span id="c_opn12"></span></td>
<td><span id="c_add12"></span></td>
<td><span id="c_clo12"></span></td>
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
  require_once('footer.php');
?>