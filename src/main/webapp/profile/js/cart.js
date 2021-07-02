$('#cart-tap').click(function() {
    $.ajax({
        type: 'post',
        url: '/furniture/profile/getCartList',
        data: {'id': $('#id').val()},
        dataType : 'json',
        success: function (data){
            alert(JSON.stringify(data));
        },
        error: function (err) {
            console.log(err);
        }
    });//ajax
});