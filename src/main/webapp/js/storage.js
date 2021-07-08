// window.cart = {
//     productId: null,
//     productColor: null,
//     productQuantity: null
// }

window.LocalStorage = {}

window.LocalStorage.addCart = function (cartId) {

    let cartIds = window.localStorage.cartIds;
    if(cartIds && cartIds.size !== 0){
        cartIds = JSON.parse(cartIds)
    } else {
        cartIds = []
    }

    cartIds.push(cartId);
    const data = JSON.stringify(cartIds)
    window.localStorage.setItem("cartIds", data)
}

window.LocalStorage.getCarts = function () {
    //debugger;
    const cartIds = window.localStorage.cartIds;
    const parse = JSON.parse(cartIds);
    return parse
}

