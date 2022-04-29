$(document).ready(function(){
	$('#submit').click(function(){
		var nam = $('#uname').val();
		var Add = $('#add').val();
		var PH = $('#ph').val();
		var Email = $('#Emal').val();
		var pswod = $('#pswd').val();
		var ufind = $('#serch').val();
		var AttendUid = $('#AttUsrid').val();
		var AttendUstats = $('#Attstatus').val();
		var AttendDelete = $('#Attdel').val();
		var AttendSearch = $('#AttSerch').val();
		var AttendUpdate = $('#Attendupdt').val();
		var OrderDelete = $('#OrderDel').val();
		var OrderSearch = $('#OrderSerch').val();
		var OrderUpdate = $('#OrderUpdt').val();
		
		var PackageUpdate = $('#PackUpdt').val();
		var PackageDelete = $('#PackDel').val();
		var PackageSearch = $('#PackSerch').val();
		var PackageInsert1 = $('#packname').val();
		var PackageInsert2 = $('#packcat').val();
		var PackageInsert3 = $('#packfee').val();
		var PackageInsert4 = $('#packtime').val();
		var PackageInsert5 = $('#packdescpt').val();
		
		var productInsert1 = $('#pname').val();
		var productInsert2 = $('#pprice').val();
		var productInsert3 = $('#pdescription').val();
		var productInsert4 = $('#pdiscount').val();
		var productInsert5 = $('#pupload').val();
		var productSearch = $('#profind').val();
		var productUpdate = $('#proupdt').val();
		var productDelete = $('#prodel').val();
		
		
		
		if(nam  == ""){
			swal("Input", "Name Must Be required", "warning")
			 return false;
			 
		}
		if(Add  == ""){
			swal("Input", "Address Must Be required", "warning")
			 return false;
		}
		
		if(PH  == ""){
			swal("Input", "Phone No. Must Be required", "warning")
			 return false;
		}
		
		if(Email  == ""){
			swal("Input", "Email id No. Must Be required", "warning")
			 return false;
		}
		
		if(pswod  == ""){
			swal("Input", "Password Must Be required", "warning")
			 return false;
		}
		
		if(ufind == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(AttendUid == ""){
			swal("Input", "Your id must Required", "warning")
			 return false;
		} 
		

		if(AttendUstats == ""){
			swal("Input", "Please Mark Attendance", "warning")
			 return false;
		} 
		
		if(AttendDelete == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(AttendSearch == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(AttendUpdate == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(OrderDelete == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(OrderSearch == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(OrderUpdate == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(PackageUpdate == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(PackageDelete == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(PackageSearch == ""){
			swal("Input", "Enter id for search", "warning")
			 return false;
		} 
		
		if(PackageInsert1 == ""){
			swal("Input", "Package Name Must required", "warning")
			 return false;
		} 

		if(PackageInsert2 == ""){
			swal("Input", "Enter Package category", "warning")
			 return false;
		} 
		

		if(PackageInsert3 == ""){
			swal("Input", "Enter Package fee", "warning")
			 return false;
		} 
		

		if(PackageInsert4 == ""){
			swal("Input", "Enter Package Duration", "warning")
			 return false;
		} 
		
		if(PackageInsert5 == ""){
			swal("Input", "Enter Package Description", "warning")
			 return false;
		} 
		
		if(productInsert1 == ""){
			swal("Input", "Enter Product Name", "warning")
			 return false;
		} 
		if(productInsert2 == ""){
			swal("Input", "Enter Product Price", "warning")
			 return false;
		} 
		if(productInsert3 == ""){
			swal("Input", "Enter Discription", "warning")
			 return false;
		} 
		if(productInsert4 == ""){
			swal("Input", "Enter Product Discount", "warning")
			 return false;
		} 
		if(productInsert5 == ""){
			swal("Input", "Please Upload Product Image", "warning")
			 return false;
		} 
		if(productSearch == ""){
			swal("Input", "Enter Product Id", "warning")
			 return false;
		} 
		if(productUpdate == ""){
			swal("Input", "Enter Product Id", "warning")
			 return false;
		} 
		if(productDelete == ""){
			swal("Input", "Enter Product Id", "warning")
			 return false;
		} 
	});
});
