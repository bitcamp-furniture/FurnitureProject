$(function(){
	$('#mypagePrivateModify').hide();
 	$('#mypageContactModify').hide();
	$('#mypagePasswordModify').hide();
	 
	$('#mypagePrivateModifyOpenBtn').click(function(){
		$('#mypagePrivateModify').show();
		$('#mypagePrivate').hide();
	});
	
	$('#mypagePrivateModifyClosingBtn').click(function(){
		$('#mypagePrivateModify').hide();
		$('#mypagePrivate').show();
	});

	
	$('#mypageContactModifyOpenBtn').click(function(){
		$('#mypageContactModify').show();
		$('#mypageContact').hide();
	});
	
	$('#mypageContactModifyClosingBtn').click(function(){
		$('#mypageContactModify').hide();
		$('#mypageContact').show();
	});
	
	
	
	
	$('#mypagePasswordOpenBtn').click(function(){
		$('#mypagePasswordModify').show();
		$('#mypagePassword').hide();
	});
	
	$('#mypagePasswordClosingBtn').click(function(){
		$('#mypagePasswordModify').hide();
		$('#mypagePassword').show();
	});
	
});

$('#mypagePrivateModifyBtn').click(function(){
	$('#mypageNameDiv').empty();
	$('#mypageBirthDiv').empty();
	$('#mypageAddressDiv').empty();
	$('#mypagePhoneDiv').empty();
	$('#mypageEmailDiv').empty();
	$('#mypagePasswordDiv').empty();
	
	if($('#mypagePrivateModifyName').val() == ''){
		$('#mypageNameDiv').text('이름 입력');
		$('#mypageNameDiv').css('color', 'red');
		$('#mypageNameDiv').css('font-size', '8pt');
		$('#mypageNameDiv').css('font-weight', 'bold');
	}else if($('#mypagePrivateModifyBirth').val() == ''){
		$('#mypageBirthDiv').text('생년월일 입력');
		$('#mypageBirthDiv').css('color', 'red');
		$('#mypageBirthDiv').css('font-size', '8pt');
		$('#mypageBirthDiv').css('font-weight', 'bold');
	}else if($('#mypagePrivateModifyAddress').val() ==''){
		$('#mypageAddressDiv').text('주소 입력');
		$('#mypageAddressDiv').css('color', 'red');
		$('#mypageAddressDiv').css('font-size', '8pt');
		$('#mypageAddressDiv').css('font-weight', 'bold');
	}
	
	
	
	
});
