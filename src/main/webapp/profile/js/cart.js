$('#cart-tap').click(function() {
    $(".cartTable tr").remove();
    $.ajax({
        type: 'post',
        url: '/furniture/profile/getCartList',
        data: {'id': $('#id').val(),
               'cartPg': $('#cartPg').val()
        },
        dataType : 'json',
        success: function (data){
            alert(JSON.stringify(data));
            $.each(data.list, function (index, item) {
                let color = null;
                if (item.product_option_color === 'R') color = '빨강';
                if (item.product_option_color === 'S') color = '실버';
                if (item.product_option_color === 'B') color = '검정';
                if (item.product_option_color === 'W') color = '흰색';

                $('<tr/>').append($('<td/>', {
                    align: 'center',
                    rowspan: 3,
                    }).append($('<a/>', {
                        href: '#',
                        align: 'center',
                        id: 'subjectA'
                    })).append($('<img>', {
                        src: '/furniture/storage/' + item.product_img_thumb,
                        //class: 'orderlist_img _' + item.order_number,
                        height: 150,
                        width: 150
                }))).append($('<td/>',{
                    text: item.product_name
                })).append($('<td/>',{
                    align: 'center',
                    style: 'text-align: center; vertical-align:middle;',
                    rowspan: 3,
                    width: 100,
                    text: item.product_price
                })).appendTo($('.cartTable'));

                $('<tr/>').append($('<td/>',{
                    text: color
                })).appendTo($('.cartTable'));

                $('<tr/>').append($('<td/>').append($('<input/>',{                
                    id: "qty_select",
                    type: 'text',
                    value: item.product_count,
                    width: 30
                })).append($('<button/>',{
                    type: 'button',
                    text: '삭제',
                    class: 'cartDeleteBtn '+item.id,
                }))).appendTo($('.cartTable'));

                // $('<div/>',{
                //     text: item
                // }).append($('<div/>',{
                //     text:
                // })).appendTo($('.cart_product_name'));

            });//each

            //페이징 처리
            $('#cartlistPagingDiv').html(data.cartPaging.pagingHTML);

        }, //success

        error: function (err) {
            console.log(err);
        }
    });//ajax
});

//---------------------------------------------------------------------
//페이징처리
function cartPaging(cartPg) {
    $(".cartTable tr").remove();
    $.ajax({
        type: 'post',
        url: '/furniture/profile/getCartList',
        data: {'id': $('#id').val(),
               'cartPg': cartPg
        },
        dataType : 'json',
        success: function (data){
            //alert(JSON.stringify(data));
            $.each(data.list, function (index, item) {
                let color = null;
                if (item.product_option_color === 'R') color = '빨강';
                if (item.product_option_color === 'S') color = '실버';
                if (item.product_option_color === 'B') color = '검정';
                if (item.product_option_color === 'W') color = '흰색';

                $('<tr/>').append($('<td/>', {
                    align: 'center',
                    rowspan: 3,
                }).append($('<a/>', {
                    href: '#',
                    align: 'center',
                    id: 'subjectA'
                })).append($('<img>', {
                    src: '/furniture/storage/' + item.product_img_thumb,
                    //class: 'orderlist_img _' + item.order_number,
                    height: 150,
                    width: 150
                }))).append($('<td/>',{
                    text: item.product_name
                })).append($('<td/>',{
                    align: 'center',
                    style: 'text-align: center; vertical-align:middle;',
                    rowspan: 3,
                    width: 100,
                    text: item.product_price
                })).appendTo($('.cartTable'));

                $('<tr/>').append($('<td/>',{
                    text: color
                })).appendTo($('.cartTable'));

                $('<tr/>').append($('<td/>').append($('<input/>',{
                    id: "qty_select",
                    type: 'text',
                    value: item.product_count,
                    width: 30
                })).append($('<button/>',{
                    type: 'button',
                    text: '삭제',
                    class: 'cartDeleteBtn '+item.id,
                }))).appendTo($('.cartTable'));

            });//each

            //페이징 처리
            $('#cartlistPagingDiv').html(data.cartPaging.pagingHTML);

        }, //success

        error: function (err) {
            console.log(err);
        }
    });//ajax
}


//---------------------------------------------------------------------
//선택삭제
$(document).on('click', '.cartDeleteBtn ', function(){
    //alert($(this).attr('class').slice(14));
    $.ajax({
        url: '/furniture/profile/cartDelete',
        type: 'post',
        data: 'id=' + $(this).attr('class').slice(14),
        success: function(){
            alert('삭제 성공');
            $('#cart-tap').trigger('click');
        },
        error: function(err){
            console.log(err);
            alert('삭제 실패');
        }
    }); //ajax

});

//---------------------------------------------------------------
//전체삭제
$('.totalCartDeleteBtn').click(function(){
    //alert($('#id').val());
    $.ajax({
        url: '/furniture/profile/cartTotalDelete',
        type: 'post',
        data: 'memberId=' +$('#id').val(),
        success: function(){
            alert('삭제 성공');
            $('#cart-tap').trigger('click');
        },
        error: function(err){
            console.log(err);
            alert('삭제 실패');
        }
    }); //ajax

});
//---------------------------------------------------------------
//결제하기버튼
$('.kakaoPayBtn').click(function(){
    //var IMP = window.IMP; // 생략가능
    IMP.init('imp18003868'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
    var msg;

    IMP.request_pay({
        pg : 'kakaopay',
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '이케즈케 결제',
        amount : '10000',
        buyer_email : 'jhw02040@naver.com',
        buyer_name : '김지현',
        buyer_tel : '01066749800',
        buyer_addr : '서울특별시 신사동',
        buyer_postcode : '123-456',
        //m_redirect_url : 'http://www.naver.com'
    }, function(rsp) {
        if ( rsp.success ) {
            //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
            jQuery.ajax({
                url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                type: 'POST',
                dataType: 'json',
                data: {
                    imp_uid : rsp.imp_uid
                    //기타 필요한 데이터가 있으면 추가 전달
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\n결제 금액 : ' + rsp.paid_amount;
                    msg += '카드 승인번호 : ' + rsp.apply_num;

                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
            //성공시 이동할 페이지
            //location.href='<%=request.getContextPath()%>/order/paySuccess?msg='+msg;
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            //실패시 이동할 페이지
            //location.href="<%=request.getContextPath()%>/order/payFail";
            alert(msg);
        }
    });
});


