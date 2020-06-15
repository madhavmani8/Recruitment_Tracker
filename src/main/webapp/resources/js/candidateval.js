$(document).ready(function(){
	$('#cn_error').hide();
	$('#rn_error').hide();
	$('#un_error').hide();
	$('#m_error').hide();
	$('#e_error').hide();
	$('#ctc_error').hide();
	$('#ec_error').hide();
	$('#np_error').hide();
	$('#cs_error').hide();
	$('#of_error').hide();
	$('#cl_error').hide();
	$('#c_error').hide();
	$('#it_error').hide();
	
	var	cnerror=true;
	var	rnerror=true;
	var	unerror=true;
	var merror=true;
	var eerror=true;
	var ctcerror=true;
	var ecerror=true;
	var nperror=true;
	var cserror=true;
	var oferror=true;
	var clerror=true;
	var cerror=true;
	var iterror=true;
	
	$('#client_name').keyup(function(){
		client_namefun();	
	});
	function client_namefun(){
		var cn= $('#client_name').val();
		if(cn==''){
			$('#cn_error').show();
			$('#cn_error').html("**Client name must be filled.");
			$('#cn_error').focus();
			$('#cn_error').css('color','red');
			cnerror=false;
			return false;
		}else{
			$('#cn_error').hide();
		}
		if((cn.length < 3) || (cn.length>25)){
			$('#cn_error').show();
			$('#cn_error').html("**Client name must between 3 to 24 character.");
			$('#cn_error').focus();
			$('#cn_error').css('color','red');
			cnerror=false;
			return false;
		}else{
			$('#cn_error').hide();
		}
	}
	$('#recruiter_name').keyup(function(){
		recruiter_namefun();	
	});
	function recruiter_namefun(){
		var rn= $('#recruiter_name').val();
		if(rn==''){
			$('#rn_error').show();
			$('#rn_error').html("**Recruiter name must be filled.");
			$('#rn_error').focus();
			$('#rn_error').css('color','red');
			rnerror=false;
			return false;
		}else{
			$('#rn_error').hide();
		}
		if((rn.length < 3) || (rn.length>25)){
			$('#rn_error').show();
			$('#rn_error').html("**Recruiter name must between 3 to 24 character.");
			$('#rn_error').focus();
			$('#rn_error').css('color','red');
			rnerror=false;
			return false;
		}else{
			$('#rn_error').hide();
		}
	}
	
	$('#user_name').keyup(function(){
		candidate_namefun();	
	});
	function candidate_namefun(){
		var un= $('#user_name').val();
		if(un ==''){
			$('#un_error').show();
			$('#un_error').html("**Candidate name must be filled.");
			$('#un_error').focus();
			$('#un_error').css('color','red');
			unerror=false;
			return false;
		}else{
			$('#un_error').hide();
		}
		if((un.length < 3) || (un.length>25)){
			$('#un_error').show();
			$('#un_error').html("**Candidate name must between 3 to 24 character.");
			$('#un_error').focus();
			$('#un_error').css('color','red');
			unerror=false;
			return false;
		}else{
			$('#un_error').hide();
		}
	}
	$('#mobile').keyup(function(){
		mobile();	
	});
		function mobile(){
			var mobileNum = $('#mobile').val();
			var validateMobNum= /^\d*(?:\.\d{1,2})?$/;
			if (validateMobNum.test(mobileNum ) && mobileNum.length == 10) {
				$('#m_error').hide();
			}
			else {
				$('#m_error').show();
				$('#m_error').html("**Mobile number must 10 digit.");
				$('#m_error').focus();
				$('#m_error').css('color','red');
				merror=false;
				return false;
			}
		}
	$('#email').keyup(function(){
		email();	
	});
	function email(){
		var email= $('#email').val();
		if(email==''){
			$('#e_error').show();
			$('#e_error').html("**Email must be filled.");
			$('#e_error').focus();
			$('#e_error').css('color','red');
			eerror=false;
			return false;
		}else{
			$('#e_error').hide();
		}
	}
	$('#ctc').keyup(function(){
		ctc_function();	
	});
	function ctc_function(){
		var ctc= $('#ctc').val();
		if(ctc==''){
			$('#ctc_error').show();
			$('#ctc_error').html("**ctc must be filled.");
			$('#ctc_error').focus();
			$('#ctc_error').css('color','red');
			ctcerror=false;
			return false;
		}else{
			$('#ctc_error').hide();
		}
	}
	$('#expected_ctc').keyup(function(){
		expectedctc_function();	
	});
	function expectedctc_function(){
		var ctc= $('#expected_ctc').val();
		if(ctc==''){
			$('#ec_error').show();
			$('#ec_error').html("**Expected ctc must be filled.");
			$('#ec_error').focus();
			$('#ec_error').css('color','red');
			ctcerror=false;
			return false;
		}else{
			$('#ec_error').hide();
		}
	}
	
	$('#notice_period').keyup(function(){
		notice_period_function();	
	});
	function notice_period_function(){
		var ctc= $('#notice_period').val();
		if(ctc==''){
			$('#np_error').show();
			$('#np_error').html("**Notice period must be filled.");
			$('#np_error').focus();
			$('#np_error').css('color','red');
			nperror=false;
			return false;
		}else{
			$('#np_error').hide();
		}
	}
	current_status
	$('#current_status').keyup(function(){
		current_status_function();	
	});
	function current_status_function(){
		var ctc= $('#current_status').val();
		if(ctc==''){
			$('#cs_error').show();
			$('#cs_error').html("**Current Status must be filled.");
			$('#cs_error').focus();
			$('#cs_error').css('color','red');
			cserror=false;
			return false;
		}else{
			$('#cs_error').hide();
		}
	}
	$('#offered_location').keyup(function(){
		offered_location_function();	
	});
	function offered_location_function(){
		var ctc= $('#offered_location').val();
		if(ctc==''){
			$('#of_error').show();
			$('#of_error').html("**Offered location must be filled.");
			$('#of_error').focus();
			$('#of_error').css('color','red');
			oferror=false;
			return false;
		}else{
			$('#of_error').hide();
		}
	}
	$('#current_location').keyup(function(){
		current_location_function();	
	});
	function current_location_function(){
		var ctc= $('#current_location').val();
		if(ctc==''){
			$('#cl_error').show();
			$('#cl_error').html("**Offered location must be filled.");
			$('#cl_error').focus();
			$('#cl_error').css('color','red');
			clerror=false;
			return false;
		}else{
			$('#cl_error').hide();
		}
	}
});