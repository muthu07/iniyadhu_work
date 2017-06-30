$(document).ready(function(){
	$('#examp').DataTable({
        dom: 'Bfrtip',
		buttons:[{
            extend: 'excelHtml5',
            customize: function( xlsx ){
                var sheet = xlsx.xl.worksheets['sheet1.xml'];
 
                $('row c[r^="C"]', sheet).attr( 's', '2' );
            }
        }]
    });
	

});


//closure And Refund list
	function reportProductTrendSummary(year)
{
	
	 $("#n_p1").html('0');
					$("#n_p2").html('0');
					$("#n_p3").html('0');
					$("#n_p4").html('0');
					$("#n_p5").html('0');
					$("#n_p6").html('0');
					$("#n_p7").html('0');
					$("#n_p8").html('0');
					$("#n_p9").html('0');
					$("#n_p10").html('0');
					$("#n_p11").html('0');
					$("#n_p12").html('0');
					
					$("#p_c1").html('0');
					$("#p_c2").html('0');
					$("#p_c3").html('0');
					$("#p_c4").html('0');
					$("#p_c5").html('0');
					$("#p_c6").html('0');
					$("#p_c7").html('0');
					$("#p_c8").html('0');
					$("#p_c9").html('0');
					$("#p_c10").html('0');
					$("#p_c11").html('0');
					$("#p_c12").html('0');
					
					$("#m1").html('0');
					$("#m2").html('0');
					$("#m3").html('0');
					$("#m4").html('0');
					$("#m5").html('0');
					$("#m6").html('0');
					$("#m7").html('0');
					$("#m8").html('0');
					$("#m9").html('0');
					$("#m10").html('0');
					$("#m11").html('0');
					$("#m12").html('0');
		    
				    $("#c1").html('0');
					$("#c2").html('0');
					$("#c3").html('0');
					$("#c4").html('0');
					$("#c5").html('0');
					$("#c6").html('0');
					$("#c7").html('0');
					$("#c8").html('0');
					$("#c9").html('0');
					$("#c10").html('0');
					$("#c11").html('0');
					$("#c12").html('0');
		

		$.ajax({ 
    url:'config/clientreport.php',
    data:{year:year,type:'product'},
    type:"post",
    success:function(data)
	  {
	    var r_a_data = jQuery.parseJSON(data);
	
		console.log(r_a_data);
		
		           
			  $.each( r_a_data["pro"], function( key, value ) {
				 $("#n_p"+value.month+"").html(value.cou);
				 $("#p_c"+value.month+"").html(value.pc);	
			
                     
              });
		
	        $.each( r_a_data["map"], function( key, value ) {
				 $("#m"+value.month+"").html(value.cou);
					
				
                     
              });
			  
			  $.each( r_a_data["close"], function( key, value ) {
				 $("#c"+value.month+"").html(value.cou);
					
				
                     
              });
      }
      });	
}
reportProductTrendSummary('2016');

function reportReturnList(year)
{
		$.ajax({ 
    url:'config/clientreport.php',
    data:{year:year,type:'return'},
    type:"post",
    success:function(data)
	  {
	    var r_a_data = jQuery.parseJSON(data);
		 console.log(r_a_data);
		 
		
		            $("#r_ret1").html('0');
					$("#r_ret2").html('0');
					$("#r_ret3").html('0');
					$("#r_ret4").html('0');
					$("#r_ret5").html('0');
					$("#r_ret6").html('0');
					$("#r_ret7").html('0');
					$("#r_ret8").html('0');
					$("#r_ret9").html('0');
					$("#r_ret10").html('0');
					$("#r_ret11").html('0');
					$("#r_ret12").html('0');

		    
		
			  $.each( r_a_data, function( key, value ) {
				 $("#r_ret"+value.month+"").html(value.cou);
					
			
                     
              });
		
	    
      }
      });	
}
reportReturnList('2016');




$(document).ready(function (){
   // Array holding selected row IDs
   var rows_selected = [];
   var table = $('#mappedList').DataTable({
      'ajax': {
         'url': 'config/mapped_product_list.php' 
      },
      'columnDefs': [{
         'targets': 0,
         'searchable': false,
         'orderable': false,
         'width': '1%',
         'className': 'dt-body-center',
         'render': function (data, type, full, meta){
             return '<input type="checkbox">';
         }
      }],
      'order': [[1, 'asc']],
      'rowCallback': function(row, data, dataIndex){
         // Get row ID
         var rowId = data[0];

         // If row ID is in the list of selected row IDs
         if($.inArray(rowId, rows_selected) !== -1){
            $(row).find('input[type="checkbox"]').prop('checked', true);
            $(row).addClass('selected');
         }
      }
   });

   // Handle click on checkbox
   $('#mappedList tbody').on('click', 'input[type="checkbox"]', function(e){
      var $row = $(this).closest('tr');

      // Get row data
      var data = table.row($row).data();

      // Get row ID
      var rowId = data[0];

      // Determine whether row ID is in the list of selected row IDs 
      var index = $.inArray(rowId, rows_selected);

      // If checkbox is checked and row ID is not in list of selected row IDs
      if(this.checked && index === -1){
         rows_selected.push(rowId);

      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
      } else if (!this.checked && index !== -1){
         rows_selected.splice(index, 1);
      }

      if(this.checked){
         $row.addClass('selected');
      } else {
         $row.removeClass('selected');
      }

      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle click on table cells with checkboxes
   $('#mappedList').on('click', 'tbody td, thead th:first-child', function(e){
      $(this).parent().find('input[type="checkbox"]').trigger('click');
   });

   // Handle click on "Select all" control
   $('thead input[name="select_all"]', table.table().container()).on('click', function(e){
      if(this.checked){
         $('#mappedList tbody input[type="checkbox"]:not(:checked)').trigger('click');
      } else {
         $('#mappedList tbody input[type="checkbox"]:checked').trigger('click');
      }

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle table draw event
   table.on('draw', function(){
      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);
   });

 

});	

//customer add
var obj;
    
function reset_page()
{
	
	location.reload();
}
function updateDataTableSelectAllCtrl(table){
   var $table             = table.table().node();
   var $chkbox_all        = $('tbody input[type="checkbox"]', $table);
   var $chkbox_checked    = $('tbody input[type="checkbox"]:checked', $table);
   var chkbox_select_all  = $('thead input[name="select_all"]', $table).get(0);

   // If none of the checkboxes are checked
   if($chkbox_checked.length === 0){
      chkbox_select_all.checked = false;
      if('indeterminate' in chkbox_select_all){
         chkbox_select_all.indeterminate = false;
      }

   // If all of the checkboxes are checked
   } else if ($chkbox_checked.length === $chkbox_all.length){
      chkbox_select_all.checked = true;
      if('indeterminate' in chkbox_select_all){
         chkbox_select_all.indeterminate = false;
      }

   // If some of the checkboxes are checked
   } else {
      chkbox_select_all.checked = true;
      if('indeterminate' in chkbox_select_all){
         chkbox_select_all.indeterminate = true;
      }
   }
}

//Invoice table

$(document).ready(function (){
   // Array holding selected row IDs
   var rows_selected = [];
   var table = $('#example').DataTable({
      'ajax': {
         'url': 'config/get_customer_sys_par.php' 
      },
      'columnDefs': [{
         'targets': 0,
         'searchable': false,
         'orderable': false,
         'width': '1%',
         'className': 'dt-body-center',
         'render': function (data, type, full, meta){
             return '<input type="checkbox">';
         }
      }],
      'order': [[1, 'asc']],
      'rowCallback': function(row, data, dataIndex){
         // Get row ID
         var rowId = data[0];

         // If row ID is in the list of selected row IDs
         if($.inArray(rowId, rows_selected) !== -1){
            $(row).find('input[type="checkbox"]').prop('checked', true);
            $(row).addClass('selected');
         }
      }
   });

   // Handle click on checkbox
   $('#example tbody').on('click', 'input[type="checkbox"]', function(e){
      var $row = $(this).closest('tr');

      // Get row data
      var data = table.row($row).data();

      // Get row ID
      var rowId = data[0];

      // Determine whether row ID is in the list of selected row IDs 
      var index = $.inArray(rowId, rows_selected);

      // If checkbox is checked and row ID is not in list of selected row IDs
      if(this.checked && index === -1){
         rows_selected.push(rowId);

      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
      } else if (!this.checked && index !== -1){
         rows_selected.splice(index, 1);
      }

      if(this.checked){
         $row.addClass('selected');
      } else {
         $row.removeClass('selected');
      }

      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle click on table cells with checkboxes
   $('#example').on('click', 'tbody td, thead th:first-child', function(e){
      $(this).parent().find('input[type="checkbox"]').trigger('click');
   });

   // Handle click on "Select all" control
   $('thead input[name="select_all"]', table.table().container()).on('click', function(e){
      if(this.checked){
         $('#example tbody input[type="checkbox"]:not(:checked)').trigger('click');
      } else {
         $('#example tbody input[type="checkbox"]:checked').trigger('click');
      }

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle table draw event
   table.on('draw', function(){
      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);
   });

   // Handle form submission event 
   
   // $('#frm-example').submit(function(e){
   $('.sndnoti').click(function(e){   
	  e.preventDefault();
	   
	   console.log($(this).attr('sndtype'));
	   
	
      $.each(rows_selected, function(index, rowId){
         
		
      });

      var ddd = rows_selected.join(",");
      console.log(ddd);
	    if($(this).attr('sndtype')=='email')
	   {
		   
		   if(ddd.length==0)
		   {
		   alert('Please Select The Coustomer');
		   }
		   else
		   {
		     $.ajax({ 
             url:'TCPDF-master/examples/example_061.php',
             data:{c_id:ddd},
             type:"post",
             success:function(data){
            
	        location.reload();
	        
	        alert('Message Sent Successfully');
	
    }
  });
  }
		   
	   }
	  
    });   

});	
	

 //
 
 function genrateInvoice(){
	
  $.ajax({ 
    url:'config/genrateInvoice.php',
    data:"username=test",
    type:"post",
    success:function(data){
     console.log(data);
	
	
    }
  });
} 
 
 //customer select list
 function getNativity(){
	
$.ajax({ 
    url:'config/customer_select_box_data.php',
    data:"type_name=1",
    type:"post",
    success:function(data){
    var nativity_data = jQuery.parseJSON(data);
	$('#c_nativity').children('option').remove();
	$.each( nativity_data, function( key, value ) {
     
     $('#c_nativity').append('<option value="'+value.id+'">'+value.name+'</option>')
     });
	
    }
  });
} 

getNativity();



 function getState(){
	
$.ajax({ 
    url:'config/customer_select_box_data.php',
    data:"type_name=2",
    type:"post",
    success:function(data){
    var nativity_data = jQuery.parseJSON(data);
	$('#c_state').children('option').remove();
	$('#c_state1').children('option').remove();
	$.each( nativity_data, function( key, value ) {
     
     $('#c_state').append('<option value="'+value.id+'">'+value.name+'</option>')
     $('#c_state1').append('<option value="'+value.id+'">'+value.name+'</option>')
     });
       var id =	$('#c_state').val();
	  getCity(id);
    }
  });
} 

getState();


 function getCity(state_id){

	
$.ajax({ 
    url:'config/customer_select_box_data.php',
    data:{type_name: "3", state_id: state_id},
    type:"post",
    success:function(data){
		
    var nativity_data = jQuery.parseJSON(data);
	$('#c_city').children('option').remove();
	$('#c_city1').children('option').remove();
	$.each( nativity_data, function( key, value ) {
     
     $('#c_city').append('<option value="'+value.id+'">'+value.name+'</option>')
     $('#c_city1').append('<option value="'+value.id+'">'+value.name+'</option>')
     });
	 
	 if(nativity_data.length === 0)
	 {
		  $('#c_city').append('<option value="0">-- No city --</option>');
		  $('#c_city1').append('<option value="0">-- No city --</option>');
	 }
	  var id =	$('#c_city').val();
	  getZone(id);
    }
  });
} 

function getZone(city_id){

	
$.ajax({ 
    url:'config/customer_select_box_data.php',
    data:{type_name: "4", city_id: city_id},
    type:"post",
    success:function(data){
		
    var nativity_data = jQuery.parseJSON(data);
	$('#c_zone').children('option').remove();
	$('#c_zone1').children('option').remove();
	$.each( nativity_data, function( key, value ) {
     
     $('#c_zone').append('<option value="'+value.id+'">'+value.name+'</option>')
     $('#c_zone1').append('<option value="'+value.id+'">'+value.name+'</option>')
     });
	  if(nativity_data.length === 0)
	 {
		  $('#c_zone').append('<option value="0">-- No Zone --</option>')
		  $('#c_zone1').append('<option value="0">-- No Zone --</option>')
	 }
	  var id =	$('#c_zone').val();
	  getArea(id);
    }
  });
} 

function getArea(zone_id){
$.ajax({ 
    url:'config/customer_select_box_data.php',
    data:{type_name: "5", zone_id: zone_id},
    type:"post",
    success:function(data){
		
    var nativity_data = jQuery.parseJSON(data);
	$('#c_area').children('option').remove();
	$('#c_area1').children('option').remove();
	$.each( nativity_data, function( key, value ) {
     
     $('#c_area').append('<option value="'+value.id+'">'+value.name+'</option>')
     $('#c_area1').append('<option value="'+value.id+'">'+value.name+'</option>')
     });
	  if(nativity_data.length === 0)
	 {
		  $('#c_area').append('<option value="0">-- No Area --</option>')
		  $('#c_area1').append('<option value="0">-- No Area --</option>')
	 }
    }
  });
} 


//mobile no checking
function existingCheck(value,type){	

$.ajax({ 
    url:'config/existing_check.php',
    data:{value:value,type:type},
    type:"post",
    success:function(data)
	  {
	   var checked_data = jQuery.parseJSON(data);
	   if(checked_data.length > 0)
	  {
		 alert('Already Exit');
	  }
	 
      }
      });
} 


//mobile
var a =1;
function add_mobile() {
	
	a++;
	$('#mobile_table').append('<tr ><td><select class="form-control" name="c_mobile_type[]">'+
                    '<option>Primary</option>'+
                    '<option>Secondary</option>'+
                      ' </select></td>'+
                      '<td>'+
                '<div class="form-group">'+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="mobile" placeholder="Mobile" name="c_mobile_no[]" onchange="existingCheck(this.value,\'mobile\')">'+
                 ' </div>'+
                '</div>	'+
'</td>'+
'<td class="action-link"> <a class="m_remove" style="cursor:pointer"> <i class="fa fa-trash-o"  aria-hidden="true" ></i></a></td>'+
 '</tr>')
  
};

 $(document).on('click', '.m_remove', function () {
     
     $(this).closest('tr').remove();
     return false;
 });
 var b =1;
 function add_address() {
	b++;
	$('#address_table').append('<tr><td><select class="form-control" name="c_address_type[]">'+
                    '<option>Permanent</option>'+
                    '<option>Communication</option>'+
                     '  </select></td>'+
                     '<td>'+
                '<div class="form-group">'+                  
                ' <div class="col-sm-10">'+
                 '  <textarea class="form-control" rows="3" id="permanent_address" placeholder="Enter. . ." name="c_address[]"></textarea>'+	
                 ' </div>'+
                '</div>'+	
'</td>'+
'<td class="action-link"> <a class="a_remove"> <i class="fa fa-trash-o"  aria-hidden="true"></i></a></td>'+
  '</tr>')
   //alert(a);
};

 $(document).on('click', '.a_remove', function () {
    
     $(this).closest('tr').remove();
     return false;
 });
 
 
 
 //customer table
 
//customer c_table
 
$(document).ready(function (){
   // Array holding selected row IDs
   var rows_selected = [];
   var table = $('#customer').DataTable({
      'ajax': {
         'url': 'config/customer_list.php' 
      },
      'columnDefs': [{
         'targets': 0,
         'searchable': false,
         'orderable': false,
         'width': '1%',
         'className': 'dt-body-center',
         'render': function (data, type, full, meta){
             return '<input type="checkbox">';
         }
      }],
      'order': [[1, 'asc']],
      'rowCallback': function(row, data, dataIndex){
         // Get row ID
         var rowId = data[0];

         // If row ID is in the list of selected row IDs
         if($.inArray(rowId, rows_selected) !== -1){
            $(row).find('input[type="checkbox"]').prop('checked', true);
            $(row).addClass('selected');
         }
      }
   });

   // Handle click on checkbox
   $('#customer tbody').on('click', 'input[type="checkbox"]', function(e){
      var $row = $(this).closest('tr');

      // Get row data
      var data = table.row($row).data();

      // Get row ID
      var rowId = data[0];

      // Determine whether row ID is in the list of selected row IDs 
      var index = $.inArray(rowId, rows_selected);

      // If checkbox is checked and row ID is not in list of selected row IDs
      if(this.checked && index === -1){
         rows_selected.push(rowId);

      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
      } else if (!this.checked && index !== -1){
         rows_selected.splice(index, 1);
      }

      if(this.checked){
         $row.addClass('selected');
      } else {
         $row.removeClass('selected');
      }

      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle click on table cells with checkboxes
   $('#customer').on('click', 'tbody td, thead th:first-child', function(e){
      $(this).parent().find('input[type="checkbox"]').trigger('click');
   });

   // Handle click on "Select all" control
   $('thead input[name="select_all"]', table.table().container()).on('click', function(e){
      if(this.checked){
         $('#customer tbody input[type="checkbox"]:not(:checked)').trigger('click');
      } else {
         $('#customer tbody input[type="checkbox"]:checked').trigger('click');
      }

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle table draw event
   table.on('draw', function(){
      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);
   });

 

});	

//customer c_table
 
$(document).ready(function (){
	

   // Array holding selected row IDs
   var rows_selected = [];
   var table = $('#Noncustomer').DataTable({
      'ajax': {
         'url': 'config/non_customer_list.php' 
      },
      'columnDefs': [{
         'targets': 0,
         'searchable': false,
         'orderable': false,
         'width': '1%',
         'className': 'dt-body-center',
         'render': function (data, type, full, meta){
             return '<input type="checkbox">';
         }
      }],
      'order': [[1, 'asc']],
      'rowCallback': function(row, data, dataIndex){
         // Get row ID
         var rowId = data[0];

         // If row ID is in the list of selected row IDs
         if($.inArray(rowId, rows_selected) !== -1){
            $(row).find('input[type="checkbox"]').prop('checked', true);
            $(row).addClass('selected');
         }
      }
   });

   // Handle click on checkbox
   $('#Noncustomer tbody').on('click', 'input[type="checkbox"]', function(e){
      var $row = $(this).closest('tr');

      // Get row data
      var data = table.row($row).data();

      // Get row ID
      var rowId = data[0];

      // Determine whether row ID is in the list of selected row IDs 
      var index = $.inArray(rowId, rows_selected);

      // If checkbox is checked and row ID is not in list of selected row IDs
      if(this.checked && index === -1){
         rows_selected.push(rowId);

      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
      } else if (!this.checked && index !== -1){
         rows_selected.splice(index, 1);
      }

      if(this.checked){
         $row.addClass('selected');
      } else {
         $row.removeClass('selected');
      }

      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle click on table cells with checkboxes
   $('#Noncustomer').on('click', 'tbody td, thead th:first-child', function(e){
      $(this).parent().find('input[type="checkbox"]').trigger('click');
   });

   // Handle click on "Select all" control
   $('thead input[name="select_all"]', table.table().container()).on('click', function(e){
      if(this.checked){
         $('#Noncustomer tbody input[type="checkbox"]:not(:checked)').trigger('click');
      } else {
         $('#Noncustomer tbody input[type="checkbox"]:checked').trigger('click');
      }

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle table draw event
   table.on('draw', function(){
      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);
   });

 

});	


function backCustomer()
{
 $("#edit_view").hide();
 $("#Customer_tab_view").show();
$("#mappedProduct").hide();  
}
function viewCustomer(c_id,c_status){
	
$("#edit_view").show();
$("#Customer_tab_view").hide();
$("#view").html(" Customer Deltails");	
$("#up").css({"display": "none"});
$("#adpup").css({"display": "none"});
$("#idpup").css({"display": "none"});
$("#canup").css({"display": "none"});
$("#cidup").css({"display": "none"});
$("#csubmit").css({"display": "none"});  
$('#c_nativity').prop('disabled', true);
$("#c_type").prop('disabled', true);
$('#applicantname').prop('disabled', true);
$('#datepicker2').prop('disabled', true);
$("#optionsRadios1").prop("disabled", true); 
$("#optionsRadios2").prop("disabled", true); 
$("#optionsRadio1").prop("disabled", true); 
$("#optionsRadio2").prop("disabled", true);
$("#c_res_status").prop("disabled", true);
$("#enquiryemail").prop("disabled", true);
$("#c_state").prop("disabled", true);
$("#c_city").prop("disabled", true);
$("#c_zone").prop("disabled", true);
$("#c_area").prop("disabled", true); 
$("#cname").prop("disabled", true);
$("#designation").prop("disabled", true);
$("#department").prop("disabled", true);
$("#alternateemail").prop("disabled", true); 
$("#ename").prop("disabled", true);
$("#enquiryemails").prop("disabled", true);
$("#emobile").prop("disabled", true);
$("#eaddress").prop("disabled", true);   
$("#rname").prop("disabled", true);
$("#remail").prop("disabled", true);
$("#rmobile").prop("disabled", true);
$("#raddress").prop("disabled", true); 


$.ajax({ 
    url:'config/viewCustomer.php',
    data:{c_id:c_id,c_status:c_status},
    type:"post",
    success:function(data)
	  {
	  
	  var view_data = jQuery.parseJSON(data);
	
	//  $("#applicantname").val();
	  $("#c_nativity").val(view_data ['gen'] [0] ['nativity']);
	  $("#applicantname").val(view_data ['gen'] [0] ['customer_name']);
	  $("#datepicker2").val(view_data ['gen'] [0] ['dob']);
	   $("#c_type").val(view_data ['gen'] [0] ['customer_type_id']);
	  
	  if(view_data ['gen'] [0] ['gender'] == 1)
	  {
		$("#optionsRadios2").prop("checked", true);  
	  }
	  else
	  {
		  $("#optionsRadios1").prop("checked", true);  
	  }
	  if(view_data ['gen'] [0] ['marital_status'] == 1)
	  {
		$("#optionsRadio2").prop("checked", true);  
	  }
	  else
	  {
		$("#optionsRadio1").prop("checked", true);  
	  }
	  
	  $("#c_res_status").val(view_data ['gen'] [0] ['residential_status']);
	  $("#enquiryemail").val(view_data ['gen'] [0] ['email']);
	  $("#c_state").val(view_data ['gen'] [0] ['state_id']);
	  $("#c_city").val(view_data ['gen'] [0] ['city_id']);
	  $("#c_zone").val(view_data ['gen'] [0] ['zone_id']);
	  $("#c_area").val(view_data ['gen'] [0] ['area_id']);
	  
	  //professional information
	  if(view_data ['pro'].length == 0)
	  {
		$("#cname").val("");
	   $("#designation").val("");
	   $("#department").val("");
	   $("#alternateemail").val("");   
	  }
	  else
	  {
	   $("#cname").val(view_data ['pro'] [0] ['company_name']);
	   $("#designation").val(view_data ['pro'] [0] ['designation']);
	   $("#department").val(view_data ['pro'] [0] ['department']);
	   $("#alternateemail").val(view_data ['pro'] [0] ['alternative_email']); 
		  
	  }
	  
	    
       //reference 1&2
	   
	  
	  if(view_data ['ref'].length == 2 || view_data ['ref'].length == 1)
	  {
	   $("#ename").val(view_data ['ref'] [0] ['name']);
	   $("#enquiryemails").val(view_data ['ref'] [0] ['email']);
	   $("#emobile").val(view_data ['ref'] [0] ['mobile']);
	   $("#eaddress").val(view_data ['ref'] [0] ['address']);  
       $("#rname").val(view_data ['ref'] [1] ['name']);
	   $("#remail").val(view_data ['ref'] [1] ['email']);
	   $("#rmobile").val(view_data ['ref'] [1] ['mobile']);
	   $("#raddress").val(view_data ['ref'] [1] ['address']);
	 
	  }
	   
	     else
	  {
		$("#ename").val("");
	   $("#enquiryemails").val("");
	   $("#emobile").val("");
	   $("#eaddress").val("");   
	   $("#rname").val("");
	   $("#remail").val("");
	   $("#rmobile").val("");
	   $("#raddress").val("");
	  }
	  
       

     
     if(view_data ['kyc'].length > 0)
	 {
	   $("#user").attr('src','Documents/customer/'+c_id+'/image/'+view_data ["kyc"] [0] ["path"]+'' );  
	   $("#companyid").attr('src','Documents/customer/'+c_id+'/Id Proof/Company Id/'+view_data ["kyc"] [1] ["path"]+'' );
	   $("#cancelcheque").attr('src','Documents/customer/'+c_id+'/Id Proof/Canceled Cheque/'+view_data ["kyc"] [2] ["path"]+'' );
	   $("#idproof").attr('src','Documents/customer/'+c_id+'/Id Proof/Id Proof/'+view_data ["kyc"] [3] ["path"]+'' );
	   $("#addressproof").attr('src','Documents/customer/'+c_id+'/Id Proof/Address Proof/'+view_data ["kyc"] [4] ["path"]+'' );
       $("#file").attr('vale',view_data ["kyc"] [0] ["path"]);
	   $("#cidfile").attr('vale',view_data ["kyc"] [1] ["path"]);
	   $("#cancelfile").attr('vale',view_data ["kyc"] [2] ["path"]);
	   $("#idfile").attr('vale',view_data ["kyc"] [3] ["path"]);
	   $("#addressfile").attr('vale',view_data ["kyc"] [4] ["path"]);
	 }
	 else
	 {
		   $("#user").attr('src','.jpg' );  
		$("#companyid").attr('src','.jpg' );
	   $("#cancelcheque").attr('src','.jpg' );
	   $("#idproof").attr('src','.jpg' );
	   $("#addressproof").attr('src','.jpg' );
       $("#file").attr('vale','');
	   $("#cidfile").attr('vale','');
	   $("#cancelfile").attr('vale','');
	   $("#idfile").attr('vale','');
	   $("#addressfile").attr('vale',''); 
		 
		 
	 }
     

		
	
	   
	 
	   
	   
	   
      //documents
	  console.log(view_data ["con"]);
     
	  
	   //mobile
	  
	   $("#mobile_table").find("tr:gt(0)").remove();
	  	$.each( view_data ['con'], function( key, value ) {
     	$('#mobile_table').append('<tr ><td><select class="form-control" id="ty'+key+'" name="c_mobile_type[]" disabled>'+
                    '<option value="Primary">Primary</option>'+
                    '<option value="Secondary">Secondary</option>'+
                      ' </select></td>'+
                      '<td>'+
                '<div class="form-group">'+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="" placeholder="Mobile" name="c_mobile_no[]" onchange="existingCheck(this.value,\'mobile\')" value="'+value.mobile+'" disabled>'+
                 ' </div>'+
                '</div>	'+
'</td>'+
'<td class="action-link"> <a class="m_remove" style="cursor:pointer"> <i class="fa fa-trash-o"  aria-hidden="true" ></i></a></td>'+
 '</tr>');
               $('#ty'+key+'').val(value.type);
              });
			  
			  //address
	   $("#address_table").find("tr:gt(0)").remove();
	  	$.each( view_data ['add'], function( key, value ) {
     	$('#address_table').append('<tr><td><select id="tz'+key+'" class="form-control" name="c_address_type[]" disabled>'+
                    '<option value="Permanent">Permanent</option>'+
                    '<option value="Communication">Communication</option>'+
                     '  </select></td>'+
                     '<td>'+
                '<div class="form-group">'+                  
                ' <div class="col-sm-10">'+
                 '  <textarea class="form-control" rows="3" id="permanent_address" placeholder="Enter. . ." name="c_address[]" disabled >'+value.address+'</textarea>'+	
                 ' </div>'+
                '</div>'+	
'</td>'+
'<td class="action-link"> <a class="a_remove"> <i class="fa fa-trash-o"  aria-hidden="true"></i></a></td>'+
  '</tr>');
               $('#tz'+key+'').val(value.type);
              });
	  	
	  
	  $(".action-link").css({"display": "none"});
	  
      }
      });
	  
	 
	  
  
} 

$("#edit_view").hide();
$("#Customer_tab_view").show();
function editCustomer(c_id,c_status){
	$("#edit_view").show();
$("#Customer_tab_view").hide();
	$("#customer_id").val(c_id);
$("#view").html("Edit Customer");	
$("#up").css({"display": "block"});
$("#adpup").css({"display": "block"});
$("#idpup").css({"display": "block"});
$("#canup").css({"display": "block"});
$("#cidup").css({"display": "block"});
$("#csubmit").css({"display": "block"});  
$('#c_nativity').prop('disabled', false);
$("#c_type").prop('disabled', false);
$('#applicantname').prop('disabled', false);
$('#datepicker2').prop('disabled', false);
$("#optionsRadios1").prop("disabled", false); 
$("#optionsRadios2").prop("disabled", false); 
$("#optionsRadio1").prop("disabled", false); 
$("#optionsRadio2").prop("disabled", false);
$("#c_res_status").prop("disabled", false);
$("#enquiryemail").prop("disabled", false);
$("#c_state").prop("disabled", false);
$("#c_city").prop("disabled", false);
$("#c_zone").prop("disabled", false);
$("#c_area").prop("disabled", false); 
$("#cname").prop("disabled", false);
$("#designation").prop("disabled", false);
$("#department").prop("disabled", false);
$("#alternateemail").prop("disabled", false); 
$("#ename").prop("disabled", false);
$("#enquiryemails").prop("disabled", false);
$("#emobile").prop("disabled", false);
$("#eaddress").prop("disabled", false);   
$("#rname").prop("disabled", false);
$("#remail").prop("disabled", false);
$("#rmobile").prop("disabled", false);
$("#raddress").prop("disabled", false); 


$.ajax({ 
    url:'config/viewCustomer.php',
    data:{c_id:c_id,c_status:c_status},
    type:"post",
    success:function(data)
	  {
	  
	  var view_data = jQuery.parseJSON(data);
	
	//  $("#applicantname").val();
	  $("#c_nativity").val(view_data ['gen'] [0] ['nativity']);
	  $("#applicantname").val(view_data ['gen'] [0] ['customer_name']);
	  $("#datepicker2").val(view_data ['gen'] [0] ['dob']);
	   $("#c_type").val(view_data ['gen'] [0] ['customer_type_id']);
	  
	  if(view_data ['gen'] [0] ['gender'] == 1)
	  {
		$("#optionsRadios2").prop("checked", true);  
	  }
	  else
	  {
		  $("#optionsRadios1").prop("checked", true);  
	  }
	  if(view_data ['gen'] [0] ['marital_status'] == 1)
	  {
		$("#optionsRadio2").prop("checked", true);  
	  }
	  else
	  {
		$("#optionsRadio1").prop("checked", true);  
	  }
	  
	  $("#c_res_status").val(view_data ['gen'] [0] ['residential_status']);
	  $("#enquiryemail").val(view_data ['gen'] [0] ['email']);
	  $("#c_state").val(view_data ['gen'] [0] ['state_id']);
	  $("#c_city").val(view_data ['gen'] [0] ['city_id']);
	  $("#c_zone").val(view_data ['gen'] [0] ['zone_id']);
	  $("#c_area").val(view_data ['gen'] [0] ['area_id']);
	  
	  //professional information
	  if(view_data ['pro'].length == 0)
	  {
		$("#cname").val("");
	   $("#designation").val("");
	   $("#department").val("");
	   $("#alternateemail").val("");   
	  }
	  else
	  {
	   $("#cname").val(view_data ['pro'] [0] ['company_name']);
	   $("#designation").val(view_data ['pro'] [0] ['designation']);
	   $("#department").val(view_data ['pro'] [0] ['department']);
	   $("#alternateemail").val(view_data ['pro'] [0] ['alternative_email']); 
		  
	  }
	  
	    
       //reference 1&2
	   
	  
	  if(view_data ['ref'].length == 2 || view_data ['ref'].length == 1)
	  {
	   $("#ename").val(view_data ['ref'] [0] ['name']);
	   $("#enquiryemails").val(view_data ['ref'] [0] ['email']);
	   $("#emobile").val(view_data ['ref'] [0] ['mobile']);
	   $("#eaddress").val(view_data ['ref'] [0] ['address']);  
       $("#rname").val(view_data ['ref'] [1] ['name']);
	   $("#remail").val(view_data ['ref'] [1] ['email']);
	   $("#rmobile").val(view_data ['ref'] [1] ['mobile']);
	   $("#raddress").val(view_data ['ref'] [1] ['address']);
	 
	  }
	   
	     else
	  {
		$("#ename").val("");
	   $("#enquiryemails").val("");
	   $("#emobile").val("");
	   $("#eaddress").val("");   
	   $("#rname").val("");
	   $("#remail").val("");
	   $("#rmobile").val("");
	   $("#raddress").val("");
	  }
	  
       
    $('#kyclen').val(view_data ['kyc'].length);
     
     if(view_data ['kyc'].length > 0)
	 {
	   $("#user").attr('src','Documents/customer/'+c_id+'/image/'+view_data ["kyc"] [0] ["path"]+'' );  
	   $("#companyid").attr('src','Documents/customer/'+c_id+'/Id Proof/Company Id/'+view_data ["kyc"] [1] ["path"]+'' );
	   $("#cancelcheque").attr('src','Documents/customer/'+c_id+'/Id Proof/Canceled Cheque/'+view_data ["kyc"] [2] ["path"]+'' );
	   $("#idproof").attr('src','Documents/customer/'+c_id+'/Id Proof/Id Proof/'+view_data ["kyc"] [3] ["path"]+'' );
	   $("#addressproof").attr('src','Documents/customer/'+c_id+'/Id Proof/Address Proof/'+view_data ["kyc"] [4] ["path"]+'' );
       $("#file").attr('vale',view_data ["kyc"] [0] ["path"]);
	   $("#cidfile").attr('vale',view_data ["kyc"] [1] ["path"]);
	   $("#cancelfile").attr('vale',view_data ["kyc"] [2] ["path"]);
	   $("#idfile").attr('vale',view_data ["kyc"] [3] ["path"]);
	   $("#addressfile").attr('vale',view_data ["kyc"] [4] ["path"]);
	 }
	 else
	 {
		   $("#user").attr('src','.jpg' );  
		$("#companyid").attr('src','.jpg' );
	   $("#cancelcheque").attr('src','.jpg' );
	   $("#idproof").attr('src','.jpg' );
	   $("#addressproof").attr('src','.jpg' );
       $("#file").attr('vale','');
	   $("#cidfile").attr('vale','');
	   $("#cancelfile").attr('vale','');
	   $("#idfile").attr('vale','');
	   $("#addressfile").attr('vale',''); 
		 
		 
	 }
     

		
	
	   
	 
	   
	   
	   
      //documents
	  console.log(view_data ["con"]);
     
	  
	   //mobile
	  
	   $("#mobile_table").find("tr:gt(0)").remove();
	  	$.each( view_data ['con'], function( key, value ) {
     	$('#mobile_table').append('<tr ><td><select class="form-control" id="ty'+key+'" name="c_mobile_type[]" >'+
                    '<option value="Primary">Primary</option>'+
                    '<option value="Secondary">Secondary</option>'+
                      ' </select></td>'+
                      '<td>'+
                '<div class="form-group">'+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="" placeholder="Mobile" name="c_mobile_no[]" onchange="existingCheck(this.value,\'mobile\')" value="'+value.mobile+'" >'+
                 ' </div>'+
                '</div>	'+
'</td>'+
'<td class="action-link"> <a class="m_remove" style="cursor:pointer"> <i class="fa fa-trash-o"  aria-hidden="true" ></i></a></td>'+
 '</tr>');
               $('#ty'+key+'').val(value.type);
              });
			  
			  //address
	   $("#address_table").find("tr:gt(0)").remove();
	  	$.each( view_data ['add'], function( key, value ) {
     	$('#address_table').append('<tr><td><select id="tz'+key+'" class="form-control" name="c_address_type[]" >'+
                    '<option value="Permanent">Permanent</option>'+
                    '<option value="Communication">Communication</option>'+
                     '  </select></td>'+
                     '<td>'+
                '<div class="form-group">'+                  
                ' <div class="col-sm-10">'+
                 '  <textarea class="form-control" rows="3" id="permanent_address" placeholder="Enter. . ." name="c_address[]"  >'+value.address+'</textarea>'+	
                 ' </div>'+
                '</div>'+	
'</td>'+
'<td class="action-link"> <a class="a_remove"> <i class="fa fa-trash-o"  aria-hidden="true"></i></a></td>'+
  '</tr>');
               $('#tz'+key+'').val(value.type);
              });
	  	
	  
	  $(".action-link").css({"display": "block"});
	  
      }
      });
	  
	 
	  
  
} 

$('#direct_customer').on('change', function(){
   this.value = this.checked ? 1 : 0;
    
}).change();
$('#company_id').on('change', function(){
   this.value = this.checked ? 1 : 0;
   
}).change();
$('#canceled_cheque').on('change', function(){
   this.value = this.checked ? 1 : 0;
   
}).change();
$('#id_proof').on('change', function(){
   this.value = this.checked ? 1 : 0;
    
}).change();
$('#add_proof').on('change', function(){
   this.value = this.checked ? 1 : 0;
    
}).change();


function removeCustomer(removeId = null) {
	
	if(removeId) {
		alert(removeId);
		$("#removeProductBtn").unbind('click').bind('click', function() {
			// loading remove button
			$("#removeProductBtn").button('loading');
			$.ajax({
				url: 'config/remove.php',
				type: 'post',
				data: {removeId: removeId ,removeType:'customer'},
				dataType: 'json',
				success:function(response) {
					// loading remove button
					$("#removeProductBtn").button('reset');
					if(response.success == true) {
						// remove product modal
						$("#removeProductModal").modal('hide');

						// update the product table
						manageProductTable.ajax.reload(null, false);

						// remove success messages
						$(".remove-messages").html('<div class="alert alert-success">'+
		            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
		            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
		          '</div>');

						// remove the mesages
	          $(".alert-success").delay(500).show(10, function() {
							$(this).delay(3000).hide(10, function() {
								$(this).remove();
							});
						}); // /.alert
					} else {

						// remove success messages
						$(".removeProductMessages").html('<div class="alert alert-success">'+
		            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
		            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
		          '</div>');

						// remove the mesages
	          $(".alert-success").delay(500).show(10, function() {
							$(this).delay(3000).hide(10, function() {
								$(this).remove();
							});
						}); // /.alert

					} // /error
				} // /success function
			}); // /ajax fucntion to remove the product
			return false;
		}); // /remove product btn clicked
	} // /if productid
} // /remove product function

	
	
	
	
	$(document).ready(function (){
		
   // Array holding selected row IDs
   var rows_selected = [];
   var table = $('#enquiry').DataTable({
      'ajax': {
         'url': 'config/enquiry_list.php' 
      },
      'columnDefs': [{
         'targets': 0,
         'searchable': false,
         'orderable': false,
         'width': '1%',
         'className': 'dt-body-center',
         'render': function (data, type, full, meta){
             return '<input type="checkbox">';
         }
      }],
      'order': [[1, 'asc']],
      'rowCallback': function(row, data, dataIndex){
         // Get row ID
         var rowId = data[0];

         // If row ID is in the list of selected row IDs
         if($.inArray(rowId, rows_selected) !== -1){
            $(row).find('input[type="checkbox"]').prop('checked', true);
            $(row).addClass('selected');
         }
      }
   });

   // Handle click on checkbox
   $('#enquiry tbody').on('click', 'input[type="checkbox"]', function(e){
      var $row = $(this).closest('tr');

      // Get row data
      var data = table.row($row).data();

      // Get row ID
      var rowId = data[0];

      // Determine whether row ID is in the list of selected row IDs 
      var index = $.inArray(rowId, rows_selected);

      // If checkbox is checked and row ID is not in list of selected row IDs
      if(this.checked && index === -1){
         rows_selected.push(rowId);

      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
      } else if (!this.checked && index !== -1){
         rows_selected.splice(index, 1);
      }

      if(this.checked){
         $row.addClass('selected');
      } else {
         $row.removeClass('selected');
      }

      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle click on table cells with checkboxes
   $('#enquiry').on('click', 'tbody td, thead th:first-child', function(e){
      $(this).parent().find('input[type="checkbox"]').trigger('click');
   });

   // Handle click on "Select all" control
   $('thead input[name="select_all"]', table.table().container()).on('click', function(e){
      if(this.checked){
         $('#enquiry tbody input[type="checkbox"]:not(:checked)').trigger('click');
      } else {
         $('#enquiry tbody input[type="checkbox"]:checked').trigger('click');
      }

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle table draw event
   table.on('draw', function(){
      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);
   });

 

});	





if(document.getElementById('optionsRadios1').checked)
{ 
	$('#new_user').hide();
	$('#exist_user').show();
}
else if(document.getElementById('optionsRadios2').checked) 
{ 
	$('#exist_user').hide();
	$('#new_user').show();
}

function userChange()
{
if(document.getElementById('optionsRadios1').checked)
{ 
	$('#new_user').hide();
	$('#exist_user').show();
}
else if(document.getElementById('optionsRadios2').checked) 
{ 
	$('#exist_user').hide();
	$('#new_user').show();
}
}



//Enquiry for existing user
$( "#cus_id" ).focusout(function() {
   
  var id = $(this).val();
  var id_type = "";
  
  if(id.length > 5)
  {
	  
	  if(Math.floor(id) == id && $.isNumeric(id)) 
	  {
		if(id.length == 10)
        {
			
			 id_type= "mobile";
			 
			 	$.ajax({ 
         url:'config/getEnquiry.php',
        data:{value:id,i_type:id_type},
        type:"post",
        success:function(data)
	   {
	     var checked_data = jQuery.parseJSON(data);
		 if(checked_data === "Invalid_m")
		 {
			 alert("This Mobile Number  Not Match Any Customer");
			 $("#cus_id").val("");
	         $("#cus_name").val("");
		 }
		 else
		 {
			 $("#cus_name").val(checked_data);
		 }
       }
      });
			
        }	  
		else
		{
			alert('This not a phone Number'); 
			$("#cus_id").val("");
	        $("#cus_name").val("");
		}
		
	  }
	  else
	  {
		  
		  var s =id.substr(0, 2);
		  if(s === "PR" && id.length == 6){
			 id_type= "c_id"; 

          	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{value:id,i_type:id_type},
    type:"post",
    success:function(data)
	  {
	   var checked_data = jQuery.parseJSON(data);
	   if(checked_data === "Invalid_c")
		 {
			alert("This Customer Id Does Not Exist");
            $("#cus_id").val("");
	        $("#cus_name").val("");			
		 }
	   else
		 {
			 $("#cus_name").val(checked_data);
		 } 
	 
      }
      });			 
		  }
		  else
		  {
			  alert('This not a customer Id'); 
			  $("#cus_id").val("");
	          $("#cus_name").val("");
		  }
		 
	  }
  
  

  }
  else
  {
	  
	  alert('You Have entered invalid Id'); 
	  $("#cus_id").val("");
	  $("#cus_name").val("");
	  
  }
  
  });
  
    var category = [];

	function getCategory(id_con) 
	{
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'p_cat'},
    type:"post",
    success:function(data)
	  {
	     category = jQuery.parseJSON(data);
		    $('#e_cat'+id_con+'').children('option').remove();
			$.each( category, function( key, value ) {
            
            $('#e_cat'+id_con+'').append('<option value="'+value.pr_sub_id+'">'+value.pr_sub_name+'</option>')
              });
			var cat_id  =  $('#e_cat'+id_con+'').val();
		//var id_con ='1';
			getVariant(cat_id,id_con);
      }
      });		
	}
	getCategory('1');
	
	var variant = [];
	function getVariant(cat_id,id_con) 
	{
		
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'variant',cat_id:cat_id},
    type:"post",
    success:function(data)
	  {
	     variant = jQuery.parseJSON(data);
		
		 $('#e_var'+id_con+'').children('option').remove();
			$.each( variant, function( key, value ) {
     
            $('#e_var'+id_con+'').append('<option value="'+value.ptdvar_id+'">'+value.name+'</option>');
			
		
              });
			  getVariantCost(variant[0]["ptdvar_id"],id_con); 
		
      }
      });		
	}
	
	function getVariantCost(id,id_con) 
	{
		
		$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'variantcost',var_id:id},
    type:"post",
    success:function(data)
	  {
	     var vriant_cost = jQuery.parseJSON(data);
		
		 console.log(vriant_cost);
		 
			$('#e_tenure'+id_con+'').val(vriant_cost["tenure"]);
			$('#e_rent'+id_con+'').val(vriant_cost["tenure"]);
			$('#e_rent_cost'+id_con+'').val(vriant_cost["rent_cost"]);
			$('#e_security'+id_con+'').val(vriant_cost["security_deposit_price"]);
			$('#e_pro_fee'+id_con+'').val(vriant_cost["processing_fee"]);
			$('#e_ins_fee'+id_con+'').val(vriant_cost["ins_fee"]);
      }
      });		
			
		
            
		
	}
	
	function getTenureCost(ten,id_con) 
	{
		var p_var_id = $('#e_var'+id_con+'').val();
		
		$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'tenurecost',ten:ten,p_var_id:p_var_id},
    type:"post",
    success:function(data)
	  {
	     var vriant_cost = jQuery.parseJSON(data);
		
		 
		 
			 
			$('#e_tenure'+id_con+'').val(vriant_cost["tenure"]);
			$('#e_rent_cost'+id_con+'').val(vriant_cost["rent_cost"]);
			$('#e_security'+id_con+'').val(vriant_cost["security_deposit_price"]);
			$('#e_pro_fee'+id_con+'').val(vriant_cost["processing_fee"]);
			$('#e_ins_fee'+id_con+'').val(vriant_cost["ins_fee"]);
      }
      });		
			
		
            
		
	}
	
	

	// add variant
	var c1 =1;
	 function addVariant() {
		 
	   c1++;
	   
	$('#c_e_product').append('<tr>'+
	'<td><select id="e_cat'+c1+'" class="form-control" onchange="getVariant(this.value,\''+c1+'\')" name="e_cat[]" >'+
              '</select></td>'+
				 '<td><select id="e_var'+c1+'" class="form-control" name="e_var[]" onchange="getVariantCost(this.value,\''+c1+'\')">'+   
                  '</select></td>'+
     '<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_quan'+c1+'"  placeholder="Quantity" name="e_quan[]">'+
                  '</div>'+
                '</div>'+
'</td>'+
'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control" id="e_delivery'+c1+'"  name="e_delivery[]">'+
                  '</div>'+
                '</div>'+	
'</td>'+

'<td>'+
                '<div class="form-group"> '+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_rent'+c1+'" onchange="getTenureCost(this.value,\''+c1+'\')"  placeholder="In Months" name="e_rent[]">'+
                  '</div>'+
                '</div>	'+
'</td>'+
'<td>'+
                '<div class="form-group"> '+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_tenure'+c1+'"   placeholder="In Months" name="e_tenure[]" readonly>'+
                  '</div>'+
                '</div>	'+
'</td>'+

			'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_rent_cost'+c1+'" placeholder="" name="e_rent_cost[]">'+
                  '</div>'+
                '</div>	'+
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_security'+c1+'" placeholder="" name="e_security[]">'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_pro_fee'+c1+'" placeholder="" name="e_pro_fee[]">'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_ins_fee'+c1+'" placeholder="" name="e_ins_fee[]">'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
				
				
				
'</td>'+
'<td class="action-link"><a class="e_v_remove"> <i class="fa fa-trash-o" title="Remove Product" aria-hidden="true"></i></a></td>'+
  '</tr>');
  getCategory(c1);
 
  
  
 
   //alert(a);
};
 $(document).on('click', '.e_v_remove', function () {
     
     $(this).closest('tr').remove();
     return false;
 });
 
 //get employee detail
 var emp="";
 function employee() {
	 $.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'emp'},
    type:"post",
    success:function(data)
	  {
	    var employee = jQuery.parseJSON(data);
		emp = jQuery.parseJSON(data);
		 $('#e_attend').children('option').remove();
		 $('#e_assign').children('option').remove();
		 $('#p_attend').children('option').remove();
		 $('#p_assign').children('option').remove();
			$.each( employee, function( key, value ) {
     
            $('#e_attend').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#e_assign').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#p_attend').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#p_assign').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#p_collect_by').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#p_deposit_by').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#e_attend1').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#e_assign1').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#e_e_attend').append('<option value="'+value.id+'">'+value.name+'</option>');
			$('#e_e_assign').append('<option value="'+value.id+'">'+value.name+'</option>');
              });
 }
 
 });
 
}
 employee();
 
 
 //New Customer Enquiry
 
  var n_category = [];

	function getCategoryNew(id_con) 
	{
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'p_cat'},
    type:"post",
    success:function(data)
	  {
	     n_category = jQuery.parseJSON(data);
		    $('#n_e_cat'+id_con+'').children('option').remove();
			$.each( n_category, function( key, value ) {
            
            $('#n_e_cat'+id_con+'').append('<option value="'+value.pr_sub_id+'">'+value.pr_sub_name+'</option>')
              });
			var cat_id  =  $('#n_e_cat1').val();
		//var id_con ='1';
			getVariantNew(cat_id,id_con);
      }
      });		
	}
	getCategoryNew('1');
	
	var n_variant = [];
	function getVariantNew(cat_id,id_con) 
	{
		
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'variant',cat_id:cat_id},
    type:"post",
    success:function(data)
	  {
		
	     n_variant = jQuery.parseJSON(data);
		 $('#n_e_var'+id_con+'').children('option').remove();
			$.each( n_variant, function( key, value ) {
     
            $('#n_e_var'+id_con+'').append('<option value="'+value.ptdvar_id+'">'+value.name+'</option>')
              });
			   getVariantNewcost(n_variant[0]["ptdvar_id"],id_con); 
			
      }
      });		
	}

	// add variant
	var d =1;
	 function addVariantNew() {
	   d++;
	$('#n_c_e_product').append('<tr>'+
	'<td><select id="n_e_cat'+d+'" class="form-control" onchange="getVariantNew(this.value,\''+d+'\')" name="e_cat[]" >'+
              '</select></td>'+
				 '<td><select id="n_e_var'+d+'" class="form-control" name="e_var[]" onchange="getVariantNewcost(this.value,\''+d+'\')">'+   
                  '</select></td>'+
     '<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="n_e_quan'+d+'" placeholder="Quantity" name="e_quan[]">'+
                  '</div>'+
                '</div>'+
'</td>'+
'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control" id="n_e_delivery'+d+'"  name="e_delivery[]">'+
                  '</div>'+
                '</div>'+	
'</td>'+
'<td>'+
                '<div class="form-group"> '+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="n_e_rent'+d+'" placeholder="In Months" onchange="getTenureCostNew(this.value,\''+d+'\')"  name="e_rent[]">'+
                  '</div>'+
                '</div>	'+
			'</td>'+
			'<td>'+
                '<div class="form-group"> '+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="n_e_tenure'+d+'" placeholder="In Months" name="e_tenure[]" readonly>'+
                  '</div>'+
                '</div>	'+
				 '</td>	'+
			'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="n_e_rent_cost'+d+'" placeholder="" name="e_rent_cost[]">'+
                  '</div>'+
                '</div>	'+
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="n_e_security'+d+'" placeholder="" name="e_security[]">'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="n_e_pro_fee'+d+'" placeholder="" name="e_pro_fee[]">'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="n_e_ins_fee'+d+'" placeholder="" name="e_ins_fee[]">'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
				
				
				
'</td>'+
'<td class="action-link"><a class="e_v_remove"> <i class="fa fa-trash-o" title="Remove Product" aria-hidden="true"></i></a></td>'+
  '</tr>');
  getCategoryNew(d);
 
  getVariantNew('1',d) ;


   //alert(a);
};

  
  function getVariantNewcost(id,id_con) 
	{
		
		$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'variantcost',var_id:id},
    type:"post",
    success:function(data)
	  {
	     var vriant_cost = jQuery.parseJSON(data);
		 
		 console.log(vriant_cost);
		     $('#n_e_tenure'+id_con+'').val(vriant_cost["tenure"]);
			$('#n_e_rent'+id_con+'').val(vriant_cost["tenure"]); 
			$('#n_e_rent_cost'+id_con+'').val(vriant_cost["rent_cost"]);
			$('#n_e_security'+id_con+'').val(vriant_cost["security_deposit_price"]);
			$('#n_e_pro_fee'+id_con+'').val(vriant_cost["processing_fee"]);
			$('#n_e_ins_fee'+id_con+'').val(vriant_cost["ins_fee"]);
      }
      });		
		
		
		
	}
  
  
  	function getTenureCostNew(ten,id_con) 
	{
		var p_var_id = $('#n_e_var'+id_con+'').val();
		
		$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'tenurecost',ten:ten,p_var_id:p_var_id},
    type:"post",
    success:function(data)
	  {
	     var vriant_cost = jQuery.parseJSON(data);
		
		 
		 
			 
			$('#n_e_tenure'+id_con+'').val(vriant_cost["tenure"]);
			
			$('#n_e_rent_cost'+id_con+'').val(vriant_cost["rent_cost"]);
			$('#n_e_security'+id_con+'').val(vriant_cost["security_deposit_price"]);
			$('#n_e_pro_fee'+id_con+'').val(vriant_cost["processing_fee"]);
			$('#n_e_ins_fee'+id_con+'').val(vriant_cost["ins_fee"]);
      }
      });		
			
		
            
		
	}
 

 //Enquiry Modify Funtion
 
function viewEnquiry(id)
{
	$('#equiry_view').show();
	$('#equiry_edit').hide();
	$('#e_table_list').hide();
	$("#e_id").val(id);
	
		$.ajax({ 
    url:'config/enquiry_view_data.php',
    data:{e_id:id},
    type:"post",
    success:function(data)
	  {
	     var enquiryData = jQuery.parseJSON(data);
		 
		 $("#cus_id").val(enquiryData ['customer_id']);
		 if(enquiryData ['c_status'] ==1)
		 {
			 $("#cus_id").val('New Customer');
		 }
		  $("#e_cus_name").val(enquiryData ['customer_name']);
		  $("#e_date").val(enquiryData ['e_date']);
		  $("#e_attend").val(enquiryData ['att_by']);
		  $("#e_assign").val(enquiryData ['att_to']);
		  $("#e_f_date").val(enquiryData ['f_date']);
		  $("#remark").val(enquiryData ['remark']);
		  var e_product = enquiryData ['e_poduct'];
		  console.log(e_product);
		   $("#v_c_e_product").find("tr:gt(0)").remove();
		  
			$.each( e_product, function( key, value ) {
				
				$('#v_c_e_product').append('<tr>'+
	'<td><select id="v_e_cat'+key+'" class="form-control"  name="e_cat[]"  disabled>'+
	
              '</select></td>'+
			  '<td><select id="v_e_var'+key+'" class="form-control" name="e_var[]" onchange="getVariantNewcost(this.value,\''+key+'\')" disabled>'+   
                  '</select></td>'+
				
                '<td><div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="v_e_quan'+key+'"  placeholder="Quantity" value="'+value.quantity+'" name="e_quan[]" disabled>'+
                  '</div>'+
                '</div>'+
'</td>'+
'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control" id="v_e_delivery'+key+'" value="'+value.expecting_delivery_date+'"  name="e_delivery[]" disabled>'+
                  '</div>'+
                '</div>'+	
'</td>'+
'<td>'+
                '<div class="form-group"> '+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="" value="'+value.rent_months_count+'" name="e_rent[]" disabled>'+
                  '</div>'+
                '</div>	'+
'</td>'+

'<td>'+
                '<div class="form-group"> '+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="v_e_rent'+key+'" value="'+value.tenure+'" name="e_rent[]" disabled>'+
                  '</div>'+
                '</div>	'+
'</td>'+
			'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="v_e_rent_cost'+key+'" value="'+value.rent_per_month+'" name="e_rent_cost[]" disabled>'+
                  '</div>'+
                '</div>	'+
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="v_e_security'+key+'" value="'+value.security_deposit_amount+'" name="e_security[]" disabled>'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="v_e_pro_fee'+key+'" value="'+value.processing_fee+'" name="e_pro_fee[]" disabled>'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="v_e_ins_fee'+key+'" value="'+value.ins_fee+'" name="e_ins_fee[]" disabled>'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
				
				
				
'</td>'+
'<td class="action-link"><a class="e_v_remove"> <i class="fa fa-trash-o" title="Remove Product" aria-hidden="true"></i></a></td>'+
  '</tr>');
           getCategoryExist(key,value.ptd_sub_catgry_id);
 			getVariantExist(value.ptd_sub_catgry_id,key,value.ptdvar_id);
            
            	 
              });
		
		//var id_con ='1';
			
      }
      });	
}

function getVariantExist(cat_id,id_con,p_id) 
	{
		
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'variant',cat_id:cat_id},
    type:"post",
    success:function(data)
	  {
		
	     n_variant = jQuery.parseJSON(data);
		 $('#v_e_var'+id_con+'').children('option').remove();
			$.each( n_variant, function( key, value ) {
              if(value.ptdvar_id == p_id)
			  {
				 $('#v_e_var'+id_con+'').append('<option value="'+value.ptdvar_id+'" selected>'+value.name+'</option>'); 
			  }
			  else
			  {
				$('#v_e_var'+id_con+'').append('<option value="'+value.ptdvar_id+'">'+value.name+'</option>');  
			  }
            
              });
			
      }
      });		
	}

	function getCategoryExist(id_con,id) 
	{
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'p_cat'},
    type:"post",
    success:function(data)
	  {
	     n_category = jQuery.parseJSON(data);
		    $('#v_e_cat'+id_con+'').children('option').remove();
			$.each( n_category, function( key, value ) {
				if(id == value.pr_sub_id )
				{
					$('#v_e_cat'+id_con+'').append('<option value="'+value.pr_sub_id+'" selected>'+value.pr_sub_name+'</option>');
				}
                 else
				 {
					$('#v_e_cat'+id_con+'').append('<option value="'+value.pr_sub_id+'">'+value.pr_sub_name+'</option>'); 
				 }
            
              });
			var cat_id  =  $('#n_e_cat1').val();
		//var id_con ='1';
			getVariantNew(cat_id,'1');
      }
      });		
	}
	
	function showEnqTable()
  {
	 // location.reload();
	$('#equiry_edit').hide();
	$('#equiry_view').hide();
	$('#equiry_payment').hide();
	$('#e_table_list').show();
	
  }
	function editEnquiry(id)
  {
	$("#e_e_id").val(id);
	$('#equiry_edit').show();
	$('#equiry_view').hide();
	$('#e_table_list').hide();
	
		$.ajax({ 
    url:'config/enquiry_view_data.php',
    data:{e_id:id},
    type:"post",
    success:function(data)
	  {
	     var enquiryData = jQuery.parseJSON(data);
		 
		 $("#e_cus_id").val(enquiryData ['customer_id']);
		 if(enquiryData ['c_status'] ==1)
		 {
			 $("#e_cus_id").val('New Customer');
		 }
		  $("#e_e_cus_name").val(enquiryData ['customer_name']);
		  $("#e_e_date").val(enquiryData ['e_date']);
		  $("#e_e_attend").val(enquiryData ['att_by']);
		  $("#e_e_assign").val(enquiryData ['att_to']);
		  $("#e_e_f_date").val(enquiryData ['f_date']);
		  $("#e_remark").val(enquiryData ['remark']);
		  var e_product = enquiryData ['e_poduct'];
		  console.log(e_product);
		   $("#c_e_product").find("tr:gt(0)").remove();
		  
			$.each( e_product, function( key, value ) {
				
				$('#c_e_product').append('<tr>'+
	'<td><select id="e_e_cat'+key+'" class="form-control"  name="e_cat[]"  disabled>'+
	
              '</select></td>'+
			  '<td><select id="e_e_var'+key+'" class="form-control" name="e_var[]" onchange="getVariantEditcost(this.value,\''+key+'\')" >'+   
                  '</select></td>'+
				
                '<td><div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_e_quan'+key+'"  placeholder="Quantity" value="'+value.quantity+'" name="e_quan[]" >'+
                  '</div>'+
                '</div>'+
'</td>'+
'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control" id="e_e_delivery'+key+'" value="'+value.expecting_delivery_date+'"  name="e_delivery[]" >'+
                  '</div>'+
                '</div>'+	
'</td>'+
'<td>'+
                '<div class="form-group"> '+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_e_rent'+key+'" value="'+value.rent_months_count+'" name="e_rent[]" onchange ="getTenureCostEdit(this.value,\''+key+'\')" >'+
                  '</div>'+
                '</div>	'+
'</td>'+
'<td>'+
                '<div class="form-group"> '+                 
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_e_tenure'+key+'" value="'+value.tenure+'" name="e_tenure[]" readonly>'+
                  '</div>'+
                '</div>	'+
'</td>'+

			'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_e_rent_cost'+key+'" value="'+value.rent_per_month+'" name="e_rent_cost[]" >'+
                  '</div>'+
                '</div>	'+
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_e_security'+key+'" value="'+value.security_deposit_amount+'" name="e_security[]" >'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_e_pro_fee'+key+'" value="'+value.processing_fee+'" name="e_pro_fee[]" >'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
'<td>'+
                '<div class="form-group">'+                  
                 '<div class="col-sm-10">'+
                    '<input type="text" class="form-control" id="e_e_ins_fee'+key+'" value="'+value.ins_fee+'" name="e_ins_fee[]" >'+
                  '</div>'+
                '</div>'+	
				
'</td>'+
				
				
				
'</td>'+
'<td class="action-link"><a class="e_v_remove"> <i class="fa fa-trash-o" title="Remove Product" aria-hidden="true"></i></a></td>'+
  '</tr>');
           getCategoryEdit(key,value.ptd_sub_catgry_id);
 			getVariantEdit(value.ptd_sub_catgry_id,key,value.ptdvar_id);
            
            	 
              });
		
		//var id_con ='1';
			
      }
      });	
}

function getVariantEdit(cat_id,id_con,p_id) 
	{
		
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'variant',cat_id:cat_id},
    type:"post",
    success:function(data)
	  {
		
	     n_variant = jQuery.parseJSON(data);
		 $('#e_e_var'+id_con+'').children('option').remove();
			$.each( n_variant, function( key, value ) {
              if(value.ptdvar_id == p_id)
			  {
				 $('#e_e_var'+id_con+'').append('<option value="'+value.ptdvar_id+'" selected>'+value.name+'</option>'); 
			  }
			  else
			  {
				$('#e_e_var'+id_con+'').append('<option value="'+value.ptdvar_id+'">'+value.name+'</option>');  
			  }
            
              });
			
      }
      });		
	}

	function getCategoryEdit(id_con,id) 
	{
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'p_cat'},
    type:"post",
    success:function(data)
	  {
	     n_category = jQuery.parseJSON(data);
		    $('#e_e_cat'+id_con+'').children('option').remove();
			$.each( n_category, function( key, value ) {
				if(id == value.pr_sub_id )
				{
					$('#e_e_cat'+id_con+'').append('<option value="'+value.pr_sub_id+'" selected>'+value.pr_sub_name+'</option>');
				}
                 else
				 {
					$('#e_e_cat'+id_con+'').append('<option value="'+value.pr_sub_id+'">'+value.pr_sub_name+'</option>'); 
				 }
            
              });
		
      }
      });		
	}
	
	function getVariantEditcost(id,id_con) 
	{
     
	        
			  $.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'variantcost',var_id:id},
    type:"post",
    success:function(data)
	  {
	     var vriant_cost = jQuery.parseJSON(data);
		
		 console.log(vriant_cost);
			$('#e_e_tenure'+id_con+'').val(vriant_cost["tenure"]);
			$('#e_e_rent'+id_con+'').val(vriant_cost["tenure"]); 
			$('#e_e_rent_cost'+id_con+'').val(vriant_cost["rent_cost"]);
			$('#e_e_security'+id_con+'').val(vriant_cost["security_deposit_price"]);
			$('#e_e_pro_fee'+id_con+'').val(vriant_cost["processing_fee"]);
			$('#e_e_ins_fee'+id_con+'').val(vriant_cost["ins_fee"]);
      }
      });		
		
	}
	
		function getTenureCostEdit(ten,id_con) 
	{
		var p_var_id = $('#e_e_var'+id_con+'').val();
		
		$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'tenurecost',ten:ten,p_var_id:p_var_id},
    type:"post",
    success:function(data)
	  {
	     var vriant_cost = jQuery.parseJSON(data);
		
		 
		 
			 
			$('#e_e_tenure'+id_con+'').val(vriant_cost["tenure"]);
			
			$('#e_e_rent_cost'+id_con+'').val(vriant_cost["rent_cost"]);
			$('#e_e_security'+id_con+'').val(vriant_cost["security_deposit_price"]);
			$('#e_e_pro_fee'+id_con+'').val(vriant_cost["processing_fee"]);
			$('#e_e_ins_fee'+id_con+'').val(vriant_cost["ins_fee"]);
      }
      });	
	  
	}
	//hide
	$('#equiry_edit').hide();
	$('#equiry_view').hide();
	$('#e_table_list').show();
    
  $(document).on('click', '.e_v_remove', function () {
     
     $(this).closest('tr').remove();
     return false;
 });
 
   $("#equiry_payment").hide();
   
 function enquiryPayment (e_id,e_date,c_status,e_s,e_p,e_i,e_t,e_r,c_id,c_name)
 { 
    $('#e_table_list').hide();
    $("#equiry_payment").show();
 
	 $('#p_e_date').html(e_date);
	 $('#p_s_amo').html(e_s);
	 $('#p_p_fee').html(e_p);
	 $('#p_i_fee').html(e_i);
	 $('#p_total_amount').html(e_t);
	 $('#p_r_amount').html(e_r);
	 $('#p_e_id').val(e_id);
	 $('#p_cus_name').val(c_name);
	 if(c_status == 1)
	 {
		  $('#p_cus_id').val("Non Customer"); 
		  $('#p_cus_id').css({"color": "red"}); 
	 } 
	 else
	 {
	 $('#p_cus_id').val(c_id); 	 
	 $('#p_cus_id').css({"color": "#555"}); 
	 }
	 var calcPerc = Math.round((e_r * 100) / e_t);
	 if(calcPerc ==0)
	 {
	 $('#p_staus').html(''+calcPerc+' % Received');
	 $('#p_staus').css({"color": "red"}); 
	 }
	  if(calcPerc >0)
	 {
	 $('#p_staus').html(''+calcPerc+' % Received');
	 $('#p_staus').css({"color": "#FDB63E"}); 
	 }
	 getPaymentHistory(e_id);
	
 }
 
 
 /*** Products ***/
 $(document).ready(function (){
   // Array holding selected row IDs
   var rows_selected = [];
   var table1 = $('#productlist').DataTable({
      'ajax': {
         'url': 'config/productlist.php' 
      },
      'columnDefs': [{
         'targets': 0,
         'searchable': false,
         'orderable': false,
         'width': '1%',
         'className': 'dt-body-center',
         'render': function (data, type, full, meta){          
             return '<input type="checkbox">';
         }
      }],
      'order': [[1, 'asc']],
      'rowCallback': function(row, data, dataIndex){
         // Get row ID
         var rowId = data[0];

         // If row ID is in the list of selected row IDs
         if($.inArray(rowId, rows_selected) !== -1){
            $(row).find('input[type="checkbox"]').prop('checked', true);
            $(row).addClass('selected');
         }
      }
   });
});



 //Save Deposit Amount 
 function saveDepositAmount() {
	 var p_e_id             = $("#p_e_id").val();
	 var p_cus_id           = $("#p_cus_id").val();
	 var p_rec_amount         = $("#p_rec_amount").val();
	 var pay_rec_on         = $("#pay_rec_on").val();
	 var pay_mode           = $("#pay_mode").val();
	 var p_collect_on       = $("#p_collect_on").val();
	 var p_collect_by       = $("#p_collect_by").val();
	 var p_deposit_on       = $("#p_deposit_on").val();
	 var p_deposit_by       = $("#p_deposit_by").val();
	 var p_r_amount         = $("#p_r_amount").html();
	 
		if (p_rec_amount==""){
			$('#receivederror').html('<span>Please enter received amount</span>');
		}
		else
		{
			$('#receivederror').html('');
		}
		if(pay_rec_on=="")
		{
			$('#paymenterror').html('<span>Please enter received date</span>');
		}
		else{
			$('#paymenterror').html('');
		}
		if(p_collect_on=="")
		{
			$('#collectederror').html('<span>Please enter collected date</span>');
		}
		else{
			$('#collectederror').html('');
		}
		if(p_deposit_on =="")
		{
			$('#depositerror').html('<span>Please enter deposited date</span>');
		}
		else{
			$('#depositerror').html('');
		}
	 
	 if(p_rec_amount=="" || pay_rec_on=="" || p_collect_on=="" || p_deposit_on=="")
	 {
		 return false;
	 }
	 
	 
	 $.ajax({ 
    url:'config/saveDepositAmount.php',
    data:{p_e_id:p_e_id,p_cus_id:p_cus_id,p_rec_amount:p_rec_amount,pay_rec_on:pay_rec_on,pay_mode:pay_mode,p_collect_on:p_collect_on,p_collect_by:p_collect_by,p_deposit_on:p_deposit_on,p_deposit_by:p_deposit_by,p_r_amount:p_r_amount},
    type:"post",
    success:function(data)
	       {
	        alert("Payment Updated Successfully");
			location.reload();
}			
	
           });
 
 
 
 }
 
 function getPaymentHistory(e_id) 
	{
		
	     	 	$.ajax({ 
    url:'config/getEnquiry.php',
    data:{i_type:'payHistory',e_id:e_id},
    type:"post",
    success:function(data)
	  {
		
	     var payment_history = jQuery.parseJSON(data);
		    $("#p_history").empty();
			$("#p_history").append(' <thead>'+
                    '<tr>'+
                    '<th>Received Amount</th>'+
					'<th>Received On</th>'+
					'<th>Payment Mode</th>'+
					'<th>Collected On</th>'+
					'<th>Collected By</th>'+
					'<th>Deposit On</th>'+
					'<th>Deposit By</th>'+
					'</tr>' +
                  '</thead>')
			
			$.each( payment_history, function( key, value ) {
				$('#p_history').append('<tr>'+
				  '<td><input type="text" class="form-control" id="p_rec_amount'+key+'" disabled> </td>'+
				  '<td><input type="date" class="form-control" id="pay_rec_on'+key+'" disabled> </td>'+
				  '<td>'+
				  '<select class="form-control" id="pay_mode'+key+'" disabled>'+
				   '<option value="1">Cash</option>'+
                    '<option value="2">Cheque</option>'+
                    '<option value="3">Online Transfer</option>'+
                    '</select>'+
					'</td>'+
				  '<td><input type="date" class="form-control" id="p_collect_on'+key+'" disabled>  </td>'+
				  '<td><select class="form-control" id="p_collect_by'+key+'" name="p_collect_by" disabled>'+
                    '</select></td>'+
				  '<td><input type="date" class="form-control" id="p_deposit_on'+key+'" disabled></td>'+
				  '<td><select class="form-control" id="p_deposit_by'+key+'" disabled>'+
                    '</select></td>'+
				  '</tr>');
                $('#p_rec_amount'+key+'').val(value.reiceved_amount);
				$('#pay_rec_on'+key+'').val(value.amount_reiceved_on);
				$('#pay_mode'+key+'').val(value.payment_mode);
				$('#p_collect_on'+key+'').val(value.collected_on);
				$('#p_collect_by'+key+'').val(value.collected_by);
				$('#p_deposit_on'+key+'').val(value.deposit_on);
				
				//collected_by
				 $('p_collect_by'+key+'').children('option').remove();
				 $('p_deposit_by'+key+'').children('option').remove();
			     $.each( emp, function( ke, valu ) {
				if(value.collected_by == valu.id )
				{
					$('#p_collect_by'+key+'').append('<option value="'+valu.id+'" selected>'+valu.name+'</option>');
				}
                 else
				 {
					$('#p_collect_by'+key+'').append('<option value="'+valu.id+'">'+valu.name+'</option>'); 
				 }
				 if(value.deposit_by == valu.id )
				{
					$('#p_deposit_by'+key+'').append('<option value="'+valu.id+'" selected>'+valu.name+'</option>');
				 }
                 else
				 {
					$('#p_deposit_by'+key+'').append('<option value="'+valu.id+'">'+valu.name+'</option>'); 
				 }
            
              });
			  
				
				
              });
			
      }
      });		
	}
	
	
	
	function enquiryFinalaze(a_type) 
	{
		if($("#p_cus_id").val() == 'Non Customer')
		{
			alert("Non customer enquiry");
		}
		else
		
		{
		    if(parseFloat($("#p_total_amount").html()) > parseFloat($("#p_r_amount").html()))
		{
			var cost =	parseFloat($("#p_total_amount").html()) - parseFloat($("#p_r_amount").html());
			var cost_type ="pending_cost";
		}
		else
		{
			var cost =	parseFloat($("# p_r_amount").html()) - parseFloat($("#p_total_amount").html());
			var cost_type ="extra_amount";
		}
	
			     	 	$.ajax({ 
    url:'config/enquiryFinalaze.php',
    data:{a_type:a_type,id:$(p_e_id).val(),cost:cost,cost_type:cost_type,c_id:$("#p_cus_id").val()},
    type:"post",
    success:function(data)
	  {
	    alert("The enquiry Verified Successfully");
		location.reload();
      }
      });	
			
		}
	}
	
	//Verified Enquiry
		$(document).ready(function (){
		
   // Array holding selected row IDs
   var rows_selected = [];
   var table = $('#VerifiedEnquiry').DataTable({
      'ajax': {
         'url': 'config/verified_enquiry_list.php' 
      },
      'columnDefs': [{
         'targets': 0,
         'searchable': false,
         'orderable': false,
         'width': '1%',
         'className': 'dt-body-center',
         'render': function (data, type, full, meta){
             return '<input type="checkbox">';
         }
      }],
      'order': [[1, 'asc']],
      'rowCallback': function(row, data, dataIndex){
         // Get row ID
         var rowId = data[0];

         // If row ID is in the list of selected row IDs
         if($.inArray(rowId, rows_selected) !== -1){
            $(row).find('input[type="checkbox"]').prop('checked', true);
            $(row).addClass('selected');
         }
      }
   });

   // Handle click on checkbox
   $('#VerifiedEnquiry tbody').on('click', 'input[type="checkbox"]', function(e){
      var $row = $(this).closest('tr');

      // Get row data
      var data = table.row($row).data();

      // Get row ID
      var rowId = data[0];

      // Determine whether row ID is in the list of selected row IDs 
      var index = $.inArray(rowId, rows_selected);

      // If checkbox is checked and row ID is not in list of selected row IDs
      if(this.checked && index === -1){
         rows_selected.push(rowId);

      // Otherwise, if checkbox is not checked and row ID is in list of selected row IDs
      } else if (!this.checked && index !== -1){
         rows_selected.splice(index, 1);
      }

      if(this.checked){
         $row.addClass('selected');
      } else {
         $row.removeClass('selected');
      }

      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle click on table cells with checkboxes
   $('#VerifiedEnquiry').on('click', 'tbody td, thead th:first-child', function(e){
      $(this).parent().find('input[type="checkbox"]').trigger('click');
   });

   // Handle click on "Select all" control
   $('thead input[name="select_all"]', table.table().container()).on('click', function(e){
      if(this.checked){
         $('#VerifiedEnquiry tbody input[type="checkbox"]:not(:checked)').trigger('click');
      } else {
         $('#VerifiedEnquiry tbody input[type="checkbox"]:checked').trigger('click');
      }

      // Prevent click event from propagating to parent
      e.stopPropagation();
   });

   // Handle table draw event
   table.on('draw', function(){
      // Update state of "Select all" control
      updateDataTableSelectAllCtrl(table);
   });

 

});	

var pro = [];






     function productMaping(id,stat)
  {
		var  product ="";
	  if(stat==0)
	  {
	$("#e_e_id").val(id);
	$('#equiry_edit').show();
	$('#equiry_view').hide();
	$('#e_table_list').hide();
	
		$.ajax({ 
    url:'config/enquiry_view_data.php',
    data:{e_id:id},
    type:"post",
    success:function(data)
	  {
	     var enquiryData = jQuery.parseJSON(data);
		 
		 $("#e_cus_id").val(enquiryData ['customer_id']);
		 if(enquiryData ['c_status'] ==1)
		 {
			 $("#e_cus_id").val('New Customer');
		 }
		  $("#e_e_cus_name").val(enquiryData ['customer_name']);
		  $("#e_e_date").val(enquiryData ['e_date']);
		  $("#e_e_attend").val(enquiryData ['att_by']);
		  $("#e_e_assign").val(enquiryData ['att_to']);
		  $("#e_e_f_date").val(enquiryData ['f_date']);
		  $("#e_remark").val(enquiryData ['remark']);
		  var e_product = enquiryData ['e_poduct'];
		  console.log(e_product);
		   $("#c_e_product").find("tr:gt(0)").remove();
		  
			$.each( e_product, function( key, value ) {
				
				for (i = 0; i < value.quantity; i++) { 
                  	$('#c_e_product').append('<tr>'+
	'<td><select id="e_e_cat'+key+''+i+'" class="form-control"  name="e_cat[]"  disabled>'+
	
              '</select></td>'+
			  '<td><select id="e_e_var'+key+''+i+'" class="form-control" name="e_var[]" disabled>'+   
                  '</select></td>'+
              '<td><select id="product'+key+''+i+'" class="form-control" name="e_product[]" onchange="productDisabled(this.value)"  onclick="productEnabled(this.value)">'+   
			   '<option value="11aaa" selected="selected">-Please Select-</option>'+
                  '</select></td>'+

'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control" id="e_e_delivery'+key+''+i+'" value="'+value.expecting_delivery_date+'"  name="e_delivery[]" >'+
				   '<input type="text" class="form-control"  value="'+value.rent_per_month+'" name="e_rent_cost[]"  style="display:none">'+
                   '<input type="text" class="form-control"  value="'+value.security_deposit_amount+'" name="e_security[]" style="display:none">'+
                   '<input type="text" class="form-control"  value="'+value.processing_fee+'" name="e_pro_fee[]" style="display:none">'+
                   '<input type="text" class="form-control"  value="'+value.ins_fee+'" name="e_ins_fee[]" style="display:none">'+
                  '</div>'+
                '</div>'+	
'</td>'+
'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control"   name="e_deliveryon[]" >'+
                  '</div>'+
                '</div>'+	
'</td>'+
	'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control"   name="e_install[]" >'+
                  '</div>'+
                '</div>'+	
'</td>'+			
	'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control"   name="e_rent[]" >'+
                  '</div>'+
                '</div>'+	
'</td>'+
'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <span style="color:red;">Not Mapped</span>'+
                  '</div>'+
                '</div>'+	
'</td>'+			
				

  '</tr>');
                             
							 
							 
						 getCategoryEdit(''+key+''+i+'',value.ptd_sub_catgry_id);
 			             getVariantEdit(value.ptd_sub_catgry_id,''+key+''+i+'',value.ptdvar_id); 
						 getVariantEdit(value.ptd_sub_catgry_id,''+key+''+i+'',value.ptdvar_id); 
						 getProductParVariant(''+key+''+i+'',value.ptdvar_id);
						 
							 }
				
			
          
            
            	
              });
		
		//var id_con ='1';
			
      }
      });

	  }
	  else
	  {
		  	$.ajax({ 
    url:'config/getVerifiedEnquiryView.php',
    data:{e_id:id},
    type:"post",
    success:function(dat)
	  {
		
	      product = jQuery.parseJSON(dat);
		  	$.ajax({ 
    url:'config/enquiry_view_data.php',
    data:{e_id:id},
    type:"post",
    success:function(data)
	  {
		  
		  
		  console.log(product);
	     var enquiryData = jQuery.parseJSON(data);
		 
		 $("#e_cus_id").val(enquiryData ['customer_id']);
		 if(enquiryData ['c_status'] ==1)
		 {
			 $("#e_cus_id").val('New Customer');
		 }
		  $("#e_e_cus_name").val(enquiryData ['customer_name']);
		  $("#e_e_date").val(enquiryData ['e_date']);
		  $("#e_e_attend").val(enquiryData ['att_by']);
		  $("#e_e_assign").val(enquiryData ['att_to']);
		  $("#e_e_f_date").val(enquiryData ['f_date']);
		  $("#e_remark").val(enquiryData ['remark']);
		  var e_product = enquiryData ['e_poduct'];
		  console.log(e_product);
		   $("#c_e_product").find("tr:gt(0)").remove();
		   var l = 0;
			$.each( e_product, function( key, value ) {
				
				
				for (i = 0; i < value.quantity; i++) { 
				
				if(product [l] ["mapped_status"] == 0)
				{
				var statu = '<span style="color:red;">Not Mapped</span>';	
				}
				else
				{
					var statu = '<span style="color:green;"> Mapped</span>';
				}
			
                  	$('#c_e_product').append('<tr>'+
	'<td><select id="e_e_cat'+l+'" class="form-control"  name="e_cat[]"  disabled>'+
	
              '</select></td>'+
			  '<td><select id="e_e_var'+l+'" class="form-control" name="e_var[]" disabled>'+   
                  '</select></td>'+
              '<td><select id="product'+l+'" class="form-control" name="e_product[]" onchange="productDisabled(this.value)"  onclick="productEnabled(this.value)">'+   
			   '<option value="11aaa" selected="selected">-Please Select-</option>'+
                  '</select></td>'+

'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   '<input type="date" class="form-control" id="e_e_delivery'+l+'"  value="'+value.expecting_delivery_date+'"   name="e_delivery[]" >'+
				   '<input type="text" class="form-control"  value="'+product [l] ["rent_per_month"] +'" name="e_rent_cost[]"  style="display:none">'+
                   '<input type="text" class="form-control"  value="'+product [l] ["actual_security_deposit_amount"] +'" name="e_security[]" style="display:none">'+
                   '<input type="text" class="form-control"  value="'+product [l] ["actual_processing_fee"] +'" name="e_pro_fee[]" style="display:none">'+
                   '<input type="text" class="form-control"  value="'+product [l] ["actual_installation_fee"] +'" name="e_ins_fee[]" style="display:none">'+
                  '</div>'+
                '</div>'+	
'</td>'+
'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control" value="'+product [l] ["delivered_at"] +'"  name="e_deliveryon[]" >'+
                  '</div>'+
                '</div>'+	
'</td>'+
	'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control" value="'+product [l] ["installation_date"] +'"  name="e_install[]" >'+
                  '</div>'+
                '</div>'+	
'</td>'+			
	'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ' <input type="date" class="form-control"  value="'+product [l] ["rent_on_date"] +'"  name="e_rent[]" >'+
                  '</div>'+
                '</div>'+	
'</td>'+	
'<td>'+
                '<div class="form-group">' +               
                 '<div class="col-sm-10">' +
                   ''+statu+''+
                  '</div>'+
                '</div>'+	
'</td>'+		
				

  '</tr>');
                             
							
							 
						 getCategoryEdit(''+l+'',value.ptd_sub_catgry_id);
 			             getVariantEdit(value.ptd_sub_catgry_id,''+l+'',value.ptdvar_id); 
						 getVariantEdit(value.ptd_sub_catgry_id,''+l+'',value.ptdvar_id); 
						 getProductParVariantverified(''+l+'',value.ptdvar_id,product [l] ["product_id"]);
						  l++;
							 }
				
			
          
             
		
            	
              });
			  
		
		//var id_con ='1';
			
      }
      });
		 
			
      }
      });
	$("#e_e_id").val(id);
	$('#equiry_edit').show();
	$('#equiry_view').hide();
	$('#e_table_list').hide();
	
	
	
	
	  
	  	

	  }
	  
}




function getProductParVariant(a,b) 
	{
	     	 	$.ajax({ 
    url:'config/getProductParVariant.php',
    data:{id:b},
    type:"post",
    success:function(data)
	  {
	     n_pro = jQuery.parseJSON(data);
		 
		 
		 
		    
			$.each( n_pro, function( key, value ) {
				
					$('#product'+a+'').append('<option value="'+value.product_id+'" >'+value.product_id+'</option>');
				
                     
              });
			  
		
	       
      }
      });		
	}

	function getProductParVariantverified(a,b,c) 
	{
	     	 	$.ajax({ 
    url:'config/getProductParVariant.php',
    data:{id:b},
    type:"post",
    success:function(data)
	  {
	     n_pro = jQuery.parseJSON(data);
		 
		 
		 
		    
			$.each( n_pro, function( key, value ) {
				if(value.product_id == c)
				{
					$('#product'+a+'').append('<option value="'+value.product_id+'"  selected="selected" style="display:none;">'+value.product_id+'</option>');
				}
				
				else
				{
					$('#product'+a+'').append('<option value="'+value.product_id+'" >'+value.product_id+'</option>');
				}
					
				
                     
              });
			  
		
	       
      }
      });		
	}


	function productDisabled(a) 
	{
		
		$("select option:contains("+c+")").attr("style","display:block");
		$("select option:contains("+a+")").attr("style","display:none");
		
	}
	
	var c ="";
	
	function productEnabled(a) 
	{
		c=a;
	    
		
	}
	
	
	
	
	//Mapped Product List
	$("#mappedProduct").hide();  
	var ex_amount  = 0;
	var pen_amount = 0;
     var  aa = 0;
     var  bb = 0;
 	 function Mapped(id,stat,extra,pending)
	 
  {
	  ex_amount  = extra;
	  pen_amount = pending;
	  
	  $("#mappedProduct").show();  
	  $("#Customer_tab_view").hide();	
	  $.ajax({ 
    url:'config/mappedData.php',
    data:{c_id:id},
    type:"post",
    success:function(data)
	  {
	     $('#mappedData').empty(); 
         $('#mappedData').append('<thead>'+
		             '<tr>'+
                    '<th colspan="9" style="font-size:16px;color:#509050">Current Product</th>'+
				    '</tr>'+
                   '<tr>'+
                    '<th colspan="1">Sr.no.</th>'+
					'<th colspan="1">Product Id</th>'+
					'<th colspan="1">Category</th>'+
					'<th colspan="1">Variant</th>'+
					'<th colspan="1">Status</th>'+
					'<th colspan="2" style="text-align:center">Process</th>'+
				    '<th colspan="2" style="text-align:center">Cost</th>'+
				    '</tr>'+
					'<tr>'+
                    '<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Date</th>'+
				    '<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Cost</th>'+		
					'</tr>'+
                  '</thead>');
             var m_pro = jQuery.parseJSON(data);
			 var asd = 0;
			 var bsd = 0;
			 var csd = 0;
             $.each( m_pro, function( key, value ) {
				
				 if(value.is_closure ==0)
				 {
					 asd = key+1;
					 $('#mappedData').append('<thead>'+
                  
					'<tr>'+
                    '<td rowspan="6">'+(key+1)+'</td>'+
					'<td rowspan="6">'+value.product_id+'</td>'+
					'<td rowspan="6">'+value.pr_sub_name+'</td>'+
					'<td rowspan="6">'+value.name+'</td>'+
					'<td rowspan="6"></td>'+
					'<td style="text-align:center" rowspan="1">Delivery </td>'+
					'<td style="text-align:center" rowspan="1">'+value.delivery_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Deposit</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_security_deposit_amount+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.installation_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_installation_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_on_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Processing</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_processing_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Return on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.return_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Rent per Month</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_per_month+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"></td>'+
				    '<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"><a  data-toggle="modal" data-target="#closuremodal" onclick="closureProduct(\''+value.product_id+'\',\''+id+'\',\''+value.closure_date+'\',\''+value.rent_per_month+'\',\''+value.rent_cost+'\')" class="btn btn-primary" style="background-color:#509050" >Closure</a></td>'+		
					'</tr>'+
					
                  '</thead>');  
					 
					 
				 }
				
				  });
				  if(asd == 0)
				  {
					   $('#mappedData').append('<thead>'+
                  
					'<tr>'+
                    '<td colspan="9" style="font-size:16px;color:#509050;text-align:center"> No Current Product</td>'+		
					'</tr>');
				  }
			
         $('#refundData').empty(); 
         $('#refundData').append('<thead>'+
		             '<tr>'+
                    '<th colspan="9" style="font-size:16px;color:#b57002">Refund List</th>'+
				    '</tr>'+
                   '<tr>'+
                    '<th colspan="1">Sr.no.</th>'+
					'<th colspan="1">Product Id</th>'+
					'<th colspan="1">Category</th>'+
					'<th colspan="1">Variant</th>'+
					'<th colspan="1">Status</th>'+
					'<th colspan="2" style="text-align:center">Process</th>'+
				    '<th colspan="2" style="text-align:center">Cost</th>'+
				    '</tr>'+
					'<tr>'+
                    '<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Date</th>'+
				    '<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Cost</th>'+		
					'</tr>'+
                  '</thead>');
             var m_pro = jQuery.parseJSON(data);
             $.each( m_pro, function( key, value ) {
				
				 if(value.is_closure ==1 && value.removed_status ==0)
				 {
					 bsd = key+1;
					 $('#refundData').append('<thead>'+
                  
					'<tr>'+
                    '<td rowspan="7">'+(key+1)+'</td>'+
					'<td rowspan="7">'+value.product_id+'</td>'+
					'<td rowspan="7">'+value.pr_sub_name+'</td>'+
					'<td rowspan="7">'+value.name+'</td>'+
					'<td rowspan="7"></td>'+
					'<td style="text-align:center" rowspan="1">Delivery </td>'+
					'<td style="text-align:center" rowspan="1">'+value.delivery_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Deposit</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_security_deposit_amount+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.installation_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_installation_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_on_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Processing</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_processing_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Return on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.return_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Rent per Month</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_per_month+'</td>'+		
					'</tr>'+
'<tr>'+
					'<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"></td>'+
				    '<td style="text-align:center" rowspan="1">Rent Cost</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_cost+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"></td>'+
				    '<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"><a  data-toggle="modal" data-target="#refundModal" onclick="refundProduct(\''+value.product_id+'\',\''+id+'\',\''+value.closure_date+'\',\''+value.rent_per_month+'\',\''+value.rent_cost+'\',\''+value.actual_security_deposit_amount+'\')" class="btn btn-primary" style="background-color:#b57002">Refund</a></td>'+		
					'</tr>'+
					
                  '</thead>');  
				
                 				
					 
				 }
				
				  });	
                  if(bsd == 0)
				  {
					   $('#refundData').append('<thead>'+
                  
					'<tr>'+
                    '<td colspan="9" style="font-size:16px;color:#b57002;text-align:center"> No Refund Pending</td>'+		
					'</tr>');
				  }				  

         $('#usedData').empty(); 
         $('#usedData').append('<thead>'+
		             '<tr>'+
                    '<th colspan="9" style="font-size:16px;color:red">Ex Product List</th>'+
				    '</tr>'+
                   '<tr>'+
                    '<th colspan="1">Sr.no.</th>'+
					'<th colspan="1">Product Id</th>'+
					'<th colspan="1">Category</th>'+
					'<th colspan="1">Variant</th>'+
					'<th colspan="1">Status</th>'+
					'<th colspan="2" style="text-align:center">Process</th>'+
				    '<th colspan="2" style="text-align:center">Cost</th>'+
				    '</tr>'+
					'<tr>'+
                    '<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Date</th>'+
				    '<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Cost</th>'+		
					'</tr>'+
                  '</thead>');
             var m_pro = jQuery.parseJSON(data);
             $.each( m_pro, function( key, value ) {
				
				 if(value.is_closure ==1 && value.removed_status ==1)
				 {
					 csd = key+1;
					 $('#usedData').append('<thead>'+
                  
					'<tr>'+
                    '<td rowspan="7">'+(key+1)+'</td>'+
					'<td rowspan="7">'+value.product_id+'</td>'+
					'<td rowspan="7">'+value.pr_sub_name+'</td>'+
					'<td rowspan="7">'+value.name+'</td>'+
					'<td rowspan="7"></td>'+
					'<td style="text-align:center" rowspan="1">Delivery </td>'+
					'<td style="text-align:center" rowspan="1">'+value.delivery_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Deposit</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_security_deposit_amount+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.installation_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_installation_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_on_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Processing</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_processing_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Return on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.return_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Rent per Month</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_per_month+'</td>'+		
					'</tr>'+
'<tr>'+
					'<td style="text-align:center" rowspan="1">Closure On</td>'+
					'<td style="text-align:center" rowspan="1">'+value.closure_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Last Rent Cost</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_cost+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"></td>'+
				    '<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"></td>'+		
					'</tr>'+
					
                  '</thead>');  
				
                 				
					 
				 }
				
				  });
                if(csd == 0)
				  {
					   $('#usedData').append('<thead>'+
                  
					'<tr>'+
                    '<td colspan="9" style="font-size:16px;color:red;text-align:center"> No Refund Pending</td>'+		
					'</tr>');
				  }					  
				  
				 
			 				 
      }
      });	
 
}





function closureProduct(p_id,id,c_date,a,b)
{
         
    aa = a;
    bb = b;

    $("#proId").val(p_id);
	$("#cusId").val(id);
	
}

$('#closurepro').on('click', function() {
alert(aa);
alert(bb);
	$.ajax({ 
    url:'config/closeAndRefund.php',
    data:{p_id:$("#proId").val(),type:"close",c_date:$("#closuredate").val(),"rent":aa,"a_ren":bb},
    type:"post",
    success:function(data)
	  {
	   
		 
			  
		Mapped($("#cusId").val(),'1');
	       
      }
      });	
	  

	  
	

});


    var e = 0;
 function refundProduct(p_id,id,c_date,r_p,r_cost,s_a)
{
	
    $("#r_proId").val(p_id);
	$("#r_cId").val(id);
	$("#r_closuredate").val(c_date);
	$("#r_pend").val(pen_amount);
	$("#r_rent").val(r_cost);
	$("#r_advance").val(s_a);

		


    e = (parseFloat(s_a)-(parseFloat(r_cost)+parseFloat(pen_amount))).toFixed(2);
	$("#r_refund").val(e);
	
	
	//alert(ex_amount);
	//alert(pen_amount);
	 
}

$('#refundProduct').on('click', function() {

	$.ajax({ 
    url:'config/closeAndRefund.php',
    data:{p_id:$("#r_proId").val(),type:"refund","r_pend":$("#r_pend").val(),"refund":e,"remark":$("#r_remark").val(),c_id:$("#r_cId").val()},
    type:"post",
    success:function(data)
	  {
	   
		 
			  
		Mapped($("#r_cId").val(),'1');
	       
      }
      });	
	  

	  
	

});

$('#closurepro1').on('click', function() {
alert(aa);
alert(bb);
	$.ajax({ 
    url:'config/closeAndRefund.php',
    data:{p_id:$("#proId").val(),type:"close",c_date:$("#closuredate").val(),"rent":aa,"a_ren":bb},
    type:"post",
    success:function(data)
	  {
	   
		 
			  
		reportProduct($("#proId").val());
	       
      }
      });	
	  

	  
	

});

$('#refundProduct1').on('click', function() {

	$.ajax({ 
    url:'config/closeAndRefund.php',
    data:{p_id:$("#r_proId").val(),type:"refund","r_pend":$("#r_pend").val(),"refund":e,"remark":$("#r_remark").val(),c_id:$("#r_cId").val()},
    type:"post",
    success:function(data)
	  {
	   
		 
			  
	
		reportProduct($("#r_proId").val());
	       
      }
      });	
	  

	  
	

});

$("#proReport").hide();

 function  backProduct()
 {
	 $("#listofproductable").show();
	$("#proReport").hide();
 }
 function reportProduct(p_id)
{
	$("#listofproductable").hide();
	$("#proReport").show();
		$.ajax({ 
    url:'config/reportProduct.php',
    data:{"p_id":p_id},
    type:"post",
    success:function(data)
	  {
	   var re_product = jQuery.parseJSON(data);
	               var t_days = 0;
				   var t_cost = 0;
				   
				    $.each( re_product["MappedHistory"], function( key, value ) {
				
					t_days = parseInt(t_days)+parseInt(value.to_days);
				    t_cost = parseInt(t_cost)+parseInt(value.to_rent)
                     
                });
			  
		 
		         $("#pur_date").html(re_product["general"][0]["purchase_date"]);          
		 		 $("#pur_cost").html(re_product["general"][0]["purchase_cost"]);      
         		
         		 $("#bill_no").html(re_product["general"][0]["bill_no"]);       
         		 $("#waranty_prieod").html(re_product["general"][0]["warranty_end_date"]);
				 


         		
				 $("#c_count").html(re_product["productCount"][0]["COUNT(customer_id)"]);          
		 		 $("#r_se_amount").html(re_product["productCount"][0]["sum(actual_security_deposit_amount)"]);      
         		
         		 $("#r_pr_amount").html(re_product["productCount"][0]["sum(actual_processing_fee)"]);       
         		 $("#r_in_amount").html(re_product["productCount"][0]["sum(actual_installation_fee)"]);
				 $("#o_day").html(t_days);
				 $("#o_rent").html(t_cost);
				 
				  $('#mappedData').empty(); 
                 $('#mappedData').append('<thead>'+
		             '<tr>'+
                    '<th colspan="9" style="font-size:16px;color:#509050">Current Customer</th>'+
				    '</tr>'+
                   '<tr>'+
                    '<th colspan="1">Sr.no.</th>'+
					'<th colspan="1">Product Id</th>'+
					'<th colspan="1">Category</th>'+
					'<th colspan="1">Variant</th>'+
					'<th colspan="1">Status</th>'+
					'<th colspan="2" style="text-align:center">Process</th>'+
				    '<th colspan="2" style="text-align:center">Cost</th>'+
				    '</tr>'+
					'<tr>'+
                    '<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Date</th>'+
				    '<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Cost</th>'+		
					'</tr>'+
                  '</thead>');
           
			 var asd = 0;
			 var bsd = 0;
			 var csd = 0;
             $.each( re_product["MappedHistory"], function( key, value ) {
				
				 if(value.is_closure ==0)
				 {
					 asd = key+1;
					 $('#mappedData').append('<thead>'+
                  
					'<tr>'+
                    '<td rowspan="7">'+(key+1)+'</td>'+
					'<td rowspan="7">'+value.product_id+'</td>'+
					'<td rowspan="7">'+value.pr_sub_name+'</td>'+
					'<td rowspan="7">'+value.name+'</td>'+
					'<td rowspan="7"></td>'+
					'<td style="text-align:center" rowspan="1">Delivery </td>'+
					'<td style="text-align:center" rowspan="1">'+value.delivery_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Deposit</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_security_deposit_amount+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.installation_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_installation_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_on_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Processing</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_processing_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Return on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.return_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Rent per Month</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_per_month+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent Days</td>'+
					'<td style="text-align:center" rowspan="1">'+value.to_days+'</td>'+
				    '<td style="text-align:center" rowspan="1">Total Rent</td>'+
					'<td style="text-align:center" rowspan="1">'+value.to_rent+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"></td>'+
				    '<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"><a  data-toggle="modal" data-target="#closuremodal" onclick="closureProduct(\''+value.product_id+'\',\''+value.customer_id+'\',\''+value.closure_date+'\',\''+value.rent_per_month+'\',\''+value.rent_cost+'\')" class="btn btn-primary" style="background-color:#509050" >Closure</a></td>'+		
					'</tr>'+
					
                  '</thead>');  
					 
					 
				 }
				
				  });
				  if(asd == 0)
				  {
					   $('#mappedData').append('<thead>'+
                  
					'<tr>'+
                    '<td colspan="9" style="font-size:16px;color:#509050;text-align:center"> No Current Product</td>'+		
					'</tr>');
				  }
			
         $('#refundData').empty(); 
         $('#refundData').append('<thead>'+
		             '<tr>'+
                    '<th colspan="9" style="font-size:16px;color:#b57002">Refund List</th>'+
				    '</tr>'+
                   '<tr>'+
                    '<th colspan="1">Sr.no.</th>'+
					'<th colspan="1">Product Id</th>'+
					'<th colspan="1">Category</th>'+
					'<th colspan="1">Variant</th>'+
					'<th colspan="1">Status</th>'+
					'<th colspan="2" style="text-align:center">Process</th>'+
				    '<th colspan="2" style="text-align:center">Cost</th>'+
				    '</tr>'+
					'<tr>'+
                    '<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Date</th>'+
				    '<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Cost</th>'+		
					'</tr>'+
                  '</thead>');
         
             $.each( re_product["MappedHistory"], function( key, value ) {
				
				 if(value.is_closure ==1 && value.removed_status ==0)
				 {
					 bsd = key+1;
					 $('#refundData').append('<thead>'+
                  
					'<tr>'+
                    '<td rowspan="8">'+(key+1)+'</td>'+
					'<td rowspan="8">'+value.product_id+'</td>'+
					'<td rowspan="8">'+value.pr_sub_name+'</td>'+
					'<td rowspan="8">'+value.name+'</td>'+
					'<td rowspan="8"></td>'+
					'<td style="text-align:center" rowspan="1">Delivery </td>'+
					'<td style="text-align:center" rowspan="1">'+value.delivery_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Deposit</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_security_deposit_amount+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.installation_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_installation_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_on_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Processing</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_processing_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Return on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.return_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Rent per Month</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_per_month+'</td>'+		
					'</tr>'+
'<tr>'+
					'<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"></td>'+
				    '<td style="text-align:center" rowspan="1">Rent Cost</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_cost+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent Days</td>'+
					'<td style="text-align:center" rowspan="1">'+value.to_days+'</td>'+
				    '<td style="text-align:center" rowspan="1">Total Rent</td>'+
					'<td style="text-align:center" rowspan="1">'+value.to_rent+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"></td>'+
				    '<td style="text-align:center" rowspan="1"></td>'+
					'<td style="text-align:center" rowspan="1"><a  data-toggle="modal" data-target="#refundModal" onclick="refundProduct(\''+value.product_id+'\',\''+value.customer_id+'\',\''+value.closure_date+'\',\''+value.rent_per_month+'\',\''+value.rent_cost+'\',\''+value.actual_security_deposit_amount+'\')" class="btn btn-primary" style="background-color:#b57002">Refund</a></td>'+		
					'</tr>'+
					
                  '</thead>');  
				
                 				
					 
				 }
				
				  });	
                  if(bsd == 0)
				  {
					   $('#refundData').append('<thead>'+
                  
					'<tr>'+
                    '<td colspan="9" style="font-size:16px;color:#b57002;text-align:center"> No Refund Pending</td>'+		
					'</tr>');
				  }				  

         $('#usedData').empty(); 
         $('#usedData').append('<thead>'+
		             '<tr>'+
                    '<th colspan="9" style="font-size:16px;color:red">Ex customers  List</th>'+
				    '</tr>'+
                   '<tr>'+
                    '<th colspan="1">Sr.no.</th>'+
					'<th colspan="1">Product Id</th>'+
					'<th colspan="1">Category</th>'+
					'<th colspan="1">Variant</th>'+
					'<th colspan="1">Status</th>'+
					'<th colspan="2" style="text-align:center">Process</th>'+
				    '<th colspan="2" style="text-align:center">Cost</th>'+
				    '</tr>'+
					'<tr>'+
                    '<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th></th>'+
					'<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Date</th>'+
				    '<th style="text-align:center">Type</th>'+
					'<th style="text-align:center">Cost</th>'+		
					'</tr>'+
                  '</thead>');
          
             $.each( re_product["MappedHistory"], function( key, value ) {
				
				 if(value.is_closure ==1 && value.removed_status ==1)
				 {
					 csd = key+1;
					 $('#usedData').append('<thead>'+
                  
					'<tr>'+
                    '<td rowspan="8">'+(key+1)+'</td>'+
					'<td rowspan="8">'+value.product_id+'</td>'+
					'<td rowspan="8">'+value.pr_sub_name+'</td>'+
					'<td rowspan="8">'+value.name+'</td>'+
					'<td rowspan="8"></td>'+
					'<td style="text-align:center" rowspan="1">Delivery </td>'+
					'<td style="text-align:center" rowspan="1">'+value.delivery_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Deposit</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_security_deposit_amount+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.installation_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Installation</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_installation_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_on_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Processing</td>'+
					'<td style="text-align:center" rowspan="1">'+value.actual_processing_fee+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Return on</td>'+
					'<td style="text-align:center" rowspan="1">'+value.return_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Rent per Month</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_per_month+'</td>'+		
					'</tr>'+
'<tr>'+
					'<td style="text-align:center" rowspan="1">Closure On</td>'+
					'<td style="text-align:center" rowspan="1">'+value.closure_date+'</td>'+
				    '<td style="text-align:center" rowspan="1">Last Rent Cost</td>'+
					'<td style="text-align:center" rowspan="1">'+value.rent_cost+'</td>'+		
					'</tr>'+
					'<tr>'+
					'<td style="text-align:center" rowspan="1">Rent Days</td>'+
					'<td style="text-align:center" rowspan="1">'+value.to_days+'</td>'+
				    '<td style="text-align:center" rowspan="1">Total Rent</td>'+
					'<td style="text-align:center" rowspan="1">'+value.to_rent+'</td>'+		
					'</tr>'+
					
                  '</thead>');  
				
                 				
					 
				 }
				
				  });
                if(csd == 0)
				  {
					   $('#usedData').append('<thead>'+
                  
					'<tr>'+
                    '<td colspan="9" style="font-size:16px;color:red;text-align:center"> No Refund Pending</td>'+		
					'</tr>');
				  }					  
				  
				 
			
      }
      });	
	 
}

 function reportCustmerSummary(year)
{
		$.ajax({ 
    url:'config/clientreport.php',
    data:{year:year,type:'gen'},
    type:"post",
    success:function(data)
	  {
	    var r_data = jQuery.parseJSON(data);
		 
		 
		
		            $("#c_mon1").html('0');
					$("#c_mon2").html('0');
					$("#c_mon3").html('0');
					$("#c_mon4").html('0');
					$("#c_mon5").html('0');
					$("#c_mon6").html('0');
					$("#c_mon7").html('0');
					$("#c_mon8").html('0');
					$("#c_mon9").html('0');
					$("#c_mon10").html('0');
					$("#c_mon11").html('0');
					$("#c_mon12").html('0');
		    
			$.each( r_data, function( key, value ) {
				 $("#c_mon"+value.month+"").html(value.cou);
					
				console.log(value);
                     
              });
			  
		
	       
      }
      });	
}
reportCustmerSummary('2016');

function reportCustmerTrendSummary(year)
{
		$.ajax({ 
    url:'config/clientreport.php',
    data:{year:year,type:'trend'},
    type:"post",
    success:function(data)
	  {
	    var r_a_data = jQuery.parseJSON(data);
		 console.log(r_a_data);
		 
		
		            $("#c_opn1").html('0');
					$("#c_opn2").html('0');
					$("#c_opn3").html('0');
					$("#c_opn4").html('0');
					$("#c_opn5").html('0');
					$("#c_opn6").html('0');
					$("#c_opn7").html('0');
					$("#c_opn8").html('0');
					$("#c_opn9").html('0');
					$("#c_opn10").html('0');
					$("#c_opn11").html('0');
					$("#c_opn12").html('0');
					$("#c_add1").html('0');
					$("#c_add2").html('0');
					$("#c_add3").html('0');
					$("#c_add4").html('0');
					$("#c_add5").html('0');
					$("#c_add6").html('0');
					$("#c_add7").html('0');
					$("#c_add8").html('0');
					$("#c_add9").html('0');
					$("#c_add10").html('0');
					$("#c_add11").html('0');
					$("#c_add12").html('0');
					$("#c_clo1").html('0');
					$("#c_clo2").html('0');
					$("#c_clo3").html('0');
					$("#c_clo4").html('0');
					$("#c_clo5").html('0');
					$("#c_clo6").html('0');
					$("#c_clo7").html('0');
					$("#c_clo8").html('0');
					$("#c_clo9").html('0');
					$("#c_clo10").html('0');
					$("#c_clo11").html('0');
					$("#c_clo12").html('0');
		    
		
			  $.each( r_a_data["open"], function( key, value ) {
				 $("#c_opn"+value.month+"").html(value.cou);
					
			
                     
              });
		
	        $.each( r_a_data["add"], function( key, value ) {
				 $("#c_add"+value.month+"").html(value.cou);
					
				
                     
              });
			  
			  $.each( r_a_data["clo"], function( key, value ) {
				 $("#c_clo"+value.month+"").html(value.cou);
					
				
                     
              });
      }
      });	
}
reportCustmerTrendSummary('2016');






 