//주문하기버튼
$('#orderPaymentBtn').click(function(){
    alert($('#memId').val());
    if($('#memId').val() ==''){
        alert('로그인후 문의 등록 부탁드립니다~')
    }else {
        location.href = '/furniture/profile/orderPaymentView';
    }
});
