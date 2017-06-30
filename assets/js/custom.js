/*** Previous next option in customer section ***/
$('.next').click(function(){
  $('.nav-tabs > .active').next('li').find('a').trigger('click');
});
$('.prev').click(function(){
  $('.nav-tabs > .active').prev('li').find('a').trigger('click');
});
	
/*** add customer validation ***/
$( "#enquiryForm" ).submit(function( event ) {



var letters = /^[A-Za-z\.]+$/;  
var cus_mail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var r1_mail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var r2_mail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var mbl = /^\d{10}$/;
var mbl1 = /^\d{10}$/;
var mbl2 = /^\d{10}$/;

var name = $('#applicantname'); 
var email = $('#enquiryemail'); 
var cname = $('#cname'); 
var designation = $('#designation'); 
var department = $('#department'); 
var alternateemail = $('#alternateemail'); 
var ename = $('#ename'); 
var enquiryemails = $('#enquiryemails'); 
var emobile = $('#emobile'); 
var eaddress = $('#eaddress'); 
var rname = $('#rname'); 
var remail = $('#remail'); 
var rmobile = $('#rmobile'); 
var raddress = $('#raddress'); 
var remark5 = $('#remark5'); 
var mobile = $('#mobile'); 
var permanent_address = $('#permanent_address'); 


/*** Applicant Name ***/
if($("#direct_customer").prop('checked') == true)
{
	
    //do something
	



if (name.val()==""){
$('#anameerror').html('<span>Please enter your Name</span>');
event.preventDefault();
}
else if(!letters.test(name.val()))
{
$('#anameerror').html('<span>Please enter character only(with dot)</span>');
event.preventDefault();
}
else
{
$('#anameerror').html('');
}

/*** Email ***/
if (email.val()==""){
$('#amailerror').html('<span>Please enter your Email</span>');
 event.preventDefault();
}
else if(!cus_mail.test(email.val()))
{
$('#amailerror').html('<span>Please enter your correct email id</span>');
event.preventDefault();
}
else
{
$('#amailerror').html('');
}


if (cname.val()==""){
$('#cnameerror').html('<span>Please enter your company name</span>');
event.preventDefault();
}
else
{
$('#cnameerror').html('');
}

if (designation.val()==""){
$('#designationerror').html('<span>Please enter your designation</span>');
event.preventDefault();
}
else
{
$('#designationerror').html('');
}

if (department.val()==""){
$('#departmenterror').html('<span>Please enter your department</span>');
event.preventDefault();
}
else
{
$('#departmenterror').html('');
}


if (alternateemail.val()==""){
$('#altemailerror').html('<span>Please enter your alternateemail</span>');
event.preventDefault();
}
else
{
$('#altemailerror').html('');
}

if (ename.val()==""){
$('#enameerror').html('<span>Please enter your reference name</span>');
event.preventDefault();
}
else
{
$('#enameerror').html('');
}


if (enquiryemails.val()==""){
$('#emailserror').html('<span>Please enter your reference mail</span>');
event.preventDefault();
}
else if(!r1_mail.test(enquiryemails.val()))
{
$('#emailserror').html('<span>Please enter your correct email id</span>');
event.preventDefault();
}
else
{
$('#emailserror').html('');
}

if (emobile.val()==""){
$('#emobileerror').html('<span>Please enter your mobile number</span>');
event.preventDefault();
}
else if(!mbl1.test(emobile.val()))
{
$('#emobileerror').html('<span>Please enter mobile number only</span>');
event.preventDefault();
}
else
{
$('#emobileerror').html('');
}

if (eaddress.val()==""){
$('#eaddresserror').html('<span>Please enter your address</span>');
event.preventDefault();
}
else
{
$('#eaddresserror').html('');
}


if (rname.val()==""){
$('#rnameerror').html('<span>Please enter your reference name</span>');
event.preventDefault();
}
else
{
$('#rnameerror').html('');
}

if (remail.val()==""){
$('#remailerror').html('<span>Please enter your reference mail</span>');
event.preventDefault();
}
else if(!r2_mail.test(remail.val()))
{
$('#remailerror').html('<span>Please enter your correct email id</span>');
event.preventDefault();
}
else
{
$('#remailerror').html('');
}



if (rmobile.val()==""){
$('#rmobileerror').html('<span>Please enter your mobile</span>');
event.preventDefault();
}
else if(!mbl2.test(rmobile.val()))
{
$('#rmobileerror').html('<span>Please enter mobile number only</span>');
event.preventDefault();
}
else
{
$('#rmobileerror').html('');
}

if (raddress.val()==""){
$('#raddresserror').html('<span>Please enter your address</span>');
event.preventDefault();
}
else
{
$('#raddresserror').html('');
}

if (remark5.val()==""){
$('#remarkerror').html('<span>Please enter your description</span>');
event.preventDefault();
}
else
{
$('#remarkerror').html('');
}

if(mobile.val()=="")
{
$('#tmobileerror').html('<span>Please enter your mobile number</span>');
event.preventDefault();
}
else if(!mbl.test(mobile.val()))
{
$('#tmobileerror').html('<span>Please enter mobile number only</span>');
event.preventDefault();
}
else
{
$('#tmobileerror').html('');
}

if (permanent_address.val()==""){
$('#tadreserror').html('<span>Please enter your permanent address</span>');
event.preventDefault();
}
else
{
$('#tadreserror').html('');
}


	
var x = $("#file").attr("vale").length;
if(x==0)
{
	
	
	$('#imgfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}

var y = $("#cidfile").attr("vale").length;
if(y==0)
{
	
	$('#cidfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}

var z = $("#cancelfile").attr("vale").length;
if(z==0)
{
	
	$('#cancelfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}

var s = $("#idfile").attr("vale").length;
if(s==0)
{
	
	$('#idfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}

var r = $("#addressfile").attr("vale").length;
if(r==0)
{
	
	$('#addressfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}



	



} //Check box validation end

else if($('#direct_customer').prop('checked')== false)
{
	if (name.val()==""){
$('#anameerror').html('<span>Please enter your Name</span>');
event.preventDefault();
}
else if(!letters.test(name.val()))
{
$('#anameerror').html('<span>Please enter character only(with dot)</span>');
event.preventDefault();
}
else
{
$('#anameerror').html('');
}

/*** Email ***/
if (email.val()==""){
$('#amailerror').html('<span>Please enter your Email</span>');
event.preventDefault();
}
else if(!cus_mail.test(email.val()))
{
$('#amailerror').html('<span>Please enter your correct email id</span>');
event.preventDefault();
}
else
{
$('#amailerror').html('');
}
if (mobile.val()==""){
$('#tmobileerror').html('<span>Please enter your mobile number</span>');
event.preventDefault();
}
else if(!mbl.test(mobile.val()))
{
$('#tmobileerror').html('<span>Please enter mobile number only</span>');
event.preventDefault();
}
else
{
$('#tmobileerror').html('');
}

if (permanent_address.val()==""){
$('#tadreserror').html('<span>Please enter your permanent address</span>');
event.preventDefault();
}
else
{
$('#tadreserror').html('');
}

}



	
}); //main function end


/*** add customer validation ***/
$( "#editCustomerform" ).submit(function( event ) {



var letters = /^[A-Za-z\.]+$/;  
var cus_mail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var r1_mail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var r2_mail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var mbl = /^\d{10}$/;
var mbl1 = /^\d{10}$/;
var mbl2 = /^\d{10}$/;

var name = $('#applicantname'); 
var email = $('#enquiryemail'); 
var cname = $('#cname'); 
var designation = $('#designation'); 
var department = $('#department'); 
var alternateemail = $('#alternateemail'); 
var ename = $('#ename'); 
var enquiryemails = $('#enquiryemails'); 
var emobile = $('#emobile'); 
var eaddress = $('#eaddress'); 
var rname = $('#rname'); 
var remail = $('#remail'); 
var rmobile = $('#rmobile'); 
var raddress = $('#raddress'); 
var remark5 = $('#remark5'); 
var mobile = $('#mobile'); 
var permanent_address = $('#permanent_address'); 


/*** Applicant Name ***/
if($("#direct_customer").prop('checked') == true)
{
	
    //do something
	



if (name.val()==""){
$('#anameerror').html('<span>Please enter your Name</span>');
event.preventDefault();
}
else if(!letters.test(name.val()))
{
$('#anameerror').html('<span>Please enter character only(with dot)</span>');
event.preventDefault();
}
else
{
$('#anameerror').html('');
}

/*** Email ***/
if (email.val()==""){
$('#amailerror').html('<span>Please enter your Email</span>');
 event.preventDefault();
}
else if(!cus_mail.test(email.val()))
{
$('#amailerror').html('<span>Please enter your correct email id</span>');
event.preventDefault();
}
else
{
$('#amailerror').html('');
}


if (cname.val()==""){
$('#cnameerror').html('<span>Please enter your company name</span>');
event.preventDefault();
}
else
{
$('#cnameerror').html('');
}

if (designation.val()==""){
$('#designationerror').html('<span>Please enter your designation</span>');
event.preventDefault();
}
else
{
$('#designationerror').html('');
}

if (department.val()==""){
$('#departmenterror').html('<span>Please enter your department</span>');
event.preventDefault();
}
else
{
$('#departmenterror').html('');
}


if (alternateemail.val()==""){
$('#altemailerror').html('<span>Please enter your alternateemail</span>');
event.preventDefault();
}
else
{
$('#altemailerror').html('');
}

if (ename.val()==""){
$('#enameerror').html('<span>Please enter your reference name</span>');
event.preventDefault();
}
else
{
$('#enameerror').html('');
}


if (enquiryemails.val()==""){
$('#emailserror').html('<span>Please enter your reference mail</span>');
event.preventDefault();
}
else if(!r1_mail.test(enquiryemails.val()))
{
$('#emailserror').html('<span>Please enter your correct email id</span>');
event.preventDefault();
}
else
{
$('#emailserror').html('');
}

if (emobile.val()==""){
$('#emobileerror').html('<span>Please enter your mobile number</span>');
event.preventDefault();
}
else if(!mbl1.test(emobile.val()))
{
$('#emobileerror').html('<span>Please enter mobile number only</span>');
event.preventDefault();
}
else
{
$('#emobileerror').html('');
}

if (eaddress.val()==""){
$('#eaddresserror').html('<span>Please enter your address</span>');
event.preventDefault();
}
else
{
$('#eaddresserror').html('');
}


if (rname.val()==""){
$('#rnameerror').html('<span>Please enter your reference name</span>');
event.preventDefault();
}
else
{
$('#rnameerror').html('');
}

if (remail.val()==""){
$('#remailerror').html('<span>Please enter your reference mail</span>');
event.preventDefault();
}
else if(!r2_mail.test(remail.val()))
{
$('#remailerror').html('<span>Please enter your correct email id</span>');
event.preventDefault();
}
else
{
$('#remailerror').html('');
}



if (rmobile.val()==""){
$('#rmobileerror').html('<span>Please enter your mobile</span>');
event.preventDefault();
}
else if(!mbl2.test(rmobile.val()))
{
$('#rmobileerror').html('<span>Please enter mobile number only</span>');
event.preventDefault();
}
else
{
$('#rmobileerror').html('');
}

if (raddress.val()==""){
$('#raddresserror').html('<span>Please enter your address</span>');
event.preventDefault();
}
else
{
$('#raddresserror').html('');
}

if (remark5.val()==""){
$('#remarkerror').html('<span>Please enter your description</span>');
event.preventDefault();
}
else
{
$('#remarkerror').html('');
}




	
var x = $("#file").attr("vale").length;
if(x==0)
{
	
	
	$('#imgfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}

var y = $("#cidfile").attr("vale").length;
if(y==0)
{
	
	$('#cidfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}

var z = $("#cancelfile").attr("vale").length;
if(z==0)
{
	
	$('#cancelfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}

var s = $("#idfile").attr("vale").length;
if(s==0)
{
	
	$('#idfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}

var r = $("#addressfile").attr("vale").length;
if(r==0)
{
	
	$('#addressfileerror').html('<span>Please upload your photo</span>');
	event.preventDefault();
}



	



} //Check box validation end

else if($('#direct_customer').prop('checked')== false)
{
	if (name.val()==""){
$('#anameerror').html('<span>Please enter your Name</span>');
event.preventDefault();
}
else if(!letters.test(name.val()))
{
$('#anameerror').html('<span>Please enter character only(with dot)</span>');
event.preventDefault();
}
else
{
$('#anameerror').html('');
}

/*** Email ***/
if (email.val()==""){
$('#amailerror').html('<span>Please enter your Email</span>');
event.preventDefault();
}
else if(!cus_mail.test(email.val()))
{
$('#amailerror').html('<span>Please enter your correct email id</span>');
event.preventDefault();
}
else
{
$('#amailerror').html('');
}


}



	
}); //main function end

function readURL(input,a) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) 
            {
           if(a==1)
            {
                $('#user').attr('src', e.target.result);
            }
            if(a==2)
            {
                $('#companyid').attr('src', e.target.result);
            }
			if(a==3)
            {
                $('#cancelcheque').attr('src', e.target.result);
            }
			if(a==4)
            {
                $('#idproof').attr('src', e.target.result);
            }
			if(a==5)
            {
                $('#addressproof').attr('src', e.target.result);
            }
            }
           
            
            reader.readAsDataURL(input.files[0]);
          }   
        }
    $("#file").change(function(){
        readURL(this,'1');
    });
	$("#cidfile").change(function(){
        readURL(this,'2');
    });
	$("#cancelfile").change(function(){
        readURL(this,'3');
    });
	$("#idfile").change(function(){
        readURL(this,'4');
    });
	$("#addressfile").change(function(){
        readURL(this,'5');
    });


/*** Preview image in customer section ***/
function uploadOnChange() {

		var allowedFiles = [".jpg" , ".jpeg", ".png", ".bmp", ".gif"];
        var fileUpload = $("#file");
		$("#file").attr('vale',fileUpload.val());
        var lblError = $("#imgfileerror");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(fileUpload.attr("vale").toLowerCase())) {
            lblError.html("Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.");
            return false;
        }
        lblError.html('');
		var id ="#user";
		readURL(fileUpload,id);
        return false;
}

function companyOnChange() {

		var allowFiles = [".jpg" , ".jpeg", ".png", ".bmp", ".gif", ".pdf"];
        var uploadfile = $("#cidfile");
		$("#cidfile").attr('vale',uploadfile.val());
        var lblError = $("#cidfileerror");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowFiles.join('|') + ")$");
        if (!regex.test(uploadfile.attr("vale").toLowerCase())) {
            lblError.html("Please upload files having extensions: <b>" + allowFiles.join(', ') + "</b> only.");
            return false;
        }
		lblError.html('');
		var id ="#companyid";
		readURL(uploadfile,id);      
        return true;
}
 

function cancelOnChange() {

		var allowedFiles = [".jpg" , ".jpeg", ".png", ".bmp", ".gif", ".pdf"];
        var uploadfile2 = $("#cancelfile");
		$("#cancelfile").attr('vale',uploadfile2.val());
        var lblError = $("#cancelfileerror");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(uploadfile2.attr("vale").toLowerCase())) {
            lblError.html("Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.");
            return false;
        }
		lblError.html('');
		var id ="#cancelcheque";
		readURL(uploadfile2,id);
		return true;
}

function idproofOnChange() {

		var allowedFiles = [".jpg" , ".jpeg", ".png", ".bmp", ".gif", ".pdf"];
        var uploadfile3 = $("#idfile");
		$("#idfile").attr('vale',uploadfile3.val());
        var lblError = $("#idfileerror");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(uploadfile3.attr("vale").toLowerCase())) {
            lblError.html("Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.");
            return false;
        }
		lblError.html('');
		var id ="#idproof";
		readURL(uploadfile3,id);
		return true;
}

function addressOnChange() {

		var allowedFiles = [".jpg" , ".jpeg", ".png", ".bmp", ".gif", ".pdf"];
        var uploadfile4 = $("#addressfile");
		$("#addressfile").attr('vale',uploadfile4.val());
        var lblError = $("#addressfileerror");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(uploadfile4.attr("vale").toLowerCase())) {
            lblError.html("Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.");
            return false;
        }
		lblError.html('');
		var id ="#addressproof";
		readURL(uploadfile4,id);
		return true;
}
