$('#cart-tap').click(function() {
    $(".cartTable tr").remove();
    $('.cart-orderList *').remove();

    $.ajax({
        type: 'post',
        url: '/furniture/profile/getCartList',
        data: {'id': $('#id').val(),
               'cartPg': $('#cartPg').val()
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
                    text: item.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",")
                })).appendTo($('.cartTable'));

                $('<tr/>').append($('<td/>',{
                    text: color
                })).appendTo($('.cartTable'));

                $('<tr/>').append($('<td/>').append($('<input/>',{
                    id: "qty_select",
                    type: 'text',
                    value: item.product_count+'개',
                    width: 30

                })).append($('<button/>',{
                    type: 'button',
                    text: '삭제',
                    class: 'cartDeleteBtn '+item.id,
                }))).appendTo($('.cartTable'));

            });//each

            let totalPrice=0;
            $.each(data.cartList, function (index, item) {
                let productPrice = item.product_count * item.product_price;

                $('<div/>',{
                    text: item.product_name,
                    class: 'cart_product_name'
                }).appendTo($('.cart-orderList'));

                $('<div/>',{
                    text: productPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g,","),
                    class: 'cart_product_price'
                }).appendTo($('.cart-orderList'));

                totalPrice += productPrice;

            });//each

            $('.cart-total-price').text(totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g,","));

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
                    text: item.product_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",")
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
        	swal("선택하신 상품을 삭제하였습니다.", "");
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
        	swal("상품을 삭제하였습니다.", "");
            $('#cart-tap').trigger('click');
        },
        error: function(err){
            console.log(err);
            alert('삭제 실패');
        }
    }); //ajax

});
