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


                $('<tr/>').append($('<td/>')).appendTo($('.cartTable'));
                $('<tr/>').append($('<td/>').append($('<input/>',{
                    id: "qty_select",
                    type: 'text',
                    value: item.product_count,
                    width: 30
                })).append($('<button/>',{
                    type: 'button',
                    text: '삭제',
                    class: 'cartDeleteBtn'
                })).append($('<button/>',{
                    type: 'button',
                    text: '위시리스트 저장',
                    class: 'wishlistSaveBtn'
                }))).appendTo($('.cartTable'));

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


                $('<tr/>').append($('<td/>')).appendTo($('.cartTable'));


                $('<tr/>').append($('<td/>').append($('<input/>',{
                    id: "qty_select",
                    type: 'text',
                    value: item.product_count,
                    width: 30
                })).append($('<button/>',{
                    type: 'button',
                    text: '삭제',
                    class: 'cartDeleteBtn'
                })).append($('<button/>',{
                    type: 'button',
                    text: '위시리스트 저장',
                    class: 'wishlistSaveBtn'
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