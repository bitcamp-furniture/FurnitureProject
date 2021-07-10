$('#order-tap').click(function() {
    //alert($('#orderPg').val());
    $("#orderListTable tr:gt(0)").remove();
    $.ajax({
        type: 'post',
        url: '/furniture/profile/getOrderList',
        data: {'id': $('#id').val(),
               'orderPg': $('#orderPg').val(),
        },
        dataType: 'json',
        success: function (data) {
//            alert(JSON.stringify(data));
            console.log(data);
            $.each(data.list, function (index, item) {
                //alert(item.order_status);
                let $td = $('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    text: OrderStatusType[item.order_status].value,
                });

                if (item.order_status === OrderStatusType.PROCESSING.name
                    || item.order_status === OrderStatusType.COMPLETED.name) {
                    $td.append($('<button/>', {
                        type: 'button',
                        text: '구매확정',
                        class: 'confirmBtn _' + item.id
                    }))
                } else if (item.order_status === OrderStatusType.FINISH.name) {
                    $td.append($('<button/>', {
                        type: 'button',
                        text: '리뷰쓰기',
                        class: 'reviewBtn _' + item.id
                    }))
                } //if

                var color = null
                if (item.product_color === 'B') color = 'BLACK';
                if (item.product_color === 'W') color = 'WHITE';
                if (item.product_color === 'R') color = 'RED';
                if (item.product_color === 'S') color = 'SILVER';
                if (item.product_color === 'P') color = 'BLACK';

                $('<tr/>').append($('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    html: item.order_number + "<br/>" + item.order_date,
                })).append($('<td/>', {
                        align: 'center'
                    }).append($('<a/>', {
                        href: '#',
                        align: 'center',
                        id: 'subjectA'
                    })).append($('<img>', {
                        src: '/furniture/storage/' + item.product_img_thumb,
                        class: 'orderlist_img _' + item.order_number
                    }))
                ).append($('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    html: item.product_name + "<br/>" + color,
                })).append($('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    text: item.product_qty,
                })).append($('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    text: item.product_amounts.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",")
                })).append($td).append($('<td/>', {
                        align: 'center',
                        style: 'vertical-align: middle',
                    }).append($('<button/>', {
                        align: 'center',
                        style: 'vertical-align: middle',
                        type: 'button',
                        text: '문의하기',
                        class: 'inquiryBtn _'+ item.id,
                        id: 'inquiryBtn'
                    }))
                ).appendTo($('#orderListTable'));

            });//each

            //페이징 처리
            $('#orderPagingDiv').html(data.orderPaging.pagingHTML);
            //문의하기
            $(document).on('click', '#inquiryBtn', function () {
                window.open("askWrite.jsp?id="+$(this).attr('class').slice(13) + "&name=" + $('#profileName').val() + "&email=" + $('#profileEmail').val(), "문의", "width=700, height=800, left=200, top=70");
            }); //inquiryBtn click

        }, //success
        error: function (err) {
            console.log(err);
        }
    });
});

//---------------------------------------------------------------------
//페이징처리
function orderPaging(orderPg) {
    $("#orderListTable tr:gt(0)").remove();
    $.ajax({
        type: 'post',
        url: '/furniture/profile/getOrderList',
        data: {'id': $('#id').val(),
               'orderPg': orderPg,
        },
        dataType: 'json',
        success: function (data) {
            //alert(JSON.stringify(data));
            $.each(data.list, function (index, item) {
                //alert(item.order_status);
                let $td = $('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    text: OrderStatusType[item.order_status].value,
                });

                if (item.order_status === OrderStatusType.PROCESSING.name
                    || item.order_status === OrderStatusType.COMPLETED.name) {
                    $td.append($('<button/>', {
                        type: 'button',
                        text: '구매확정',
                        class: 'confirmBtn _' + item.id
                    }))
                } else if (item.order_status === OrderStatusType.FINISH.name) {
                    $td.append($('<button/>', {
                        type: 'button',
                        text: '리뷰쓰기',
                        class: 'reviewBtn _' + item.id
                    }))
                } //if

                var color = null
                if (item.product_color === 'B') color = 'BLACK';
                if (item.product_color === 'W') color = 'WHITE';
                if (item.product_color === 'R') color = 'RED';
                if (item.product_color === 'S') color = 'SILVER';
                if (item.product_color === 'P') color = 'BLACK';

                $('<tr/>').append($('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    html: item.order_number + "<br/>" + item.order_date,
                })).append($('<td/>', {
                        align: 'center'
                    }).append($('<a/>', {
                        href: '#',
                        align: 'center',
                        id: 'subjectA'
                    })).append($('<img>', {
                        src: '/furniture/storage/' + item.product_img_thumb,
                        class: 'orderlist_img _' + item.order_number
                    }))
                ).append($('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    html: item.product_name + "<br/>" + color,
                })).append($('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    text: item.product_qty,
                })).append($('<td/>', {
                    align: 'center',
                    style: 'vertical-align: middle',
                    text: item.product_amounts.toString().replace(/\B(?=(\d{3})+(?!\d))/g,",")
                })).append($td).append($('<td/>', {
                        align: 'center',
                        style: 'vertical-align: middle',
                    }).append($('<button/>', {
                        align: 'center',
                        style: 'vertical-align: middle',
                        type: 'button',
                        text: '문의하기',
                        class: 'inquiryBtn _'+ item.id,
                        id: 'inquiryBtn'
                    }))
                ).appendTo($('#orderListTable'));

            });//each

            //페이징 처리
            $('#orderPagingDiv').html(data.orderPaging.pagingHTML);
            //문의하기
            $(document).on('click', '#inquiryBtn', function () {
                window.open("askWrite.jsp?id="+$(this).attr('class').slice(13) + "&name=" + $('#profileName').val() + "&email=" + $('#profileEmail').val(), "문의", "width=700, height=800, left=200, top=70");
            }); //inquiryBtn click

        }, //success
        error: function (err) {
            console.log(err);
        }
    });

}

//-------------------------------------------------------------------------------
//구매확정 버튼
$(document).on('click', '.confirmBtn', function () {
    $.ajax({
        url: '/furniture/profile/updateOrderStatus',
        type: 'post',
        data: 'id='+$(this).attr('class').slice(12),
        success: function () {
            $('#order-tap').trigger('click');
        },
        error: function (err) {
            console.log(err);
        }
    }); //ajax
}); //confirmBtn click