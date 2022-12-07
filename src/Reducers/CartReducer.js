let storage_cart = JSON.parse(localStorage.getItem('cart'))

let initialState = {
    cart: storage_cart ? storage_cart : [],
}


const CartReducer = (state = initialState, action) => {
    if (action.type === "ADD_TO_CART") {

        let updatedState = []

        let foundItem = state.cart.find(item => item.id === action.payload.id)

        if (!foundItem) {
            updatedState = [...state.cart, action.payload]
        }
        else {
            updatedState = state.cart.map((item) => {
                return {
                    ...item,
                    quantity: item.id === foundItem.id ? item.quantity < 10 ? item.quantity + 1 : item.quantity : item.quantity
                }
            })
        }

        localStorage.setItem('cart', JSON.stringify(updatedState))

        return {
            cart: updatedState
        }
    }
    else if (action.type === "INCREMENT") {
        let updatedState = []
        console.log(action.payload)

        updatedState = state.cart.map((item) => {
            return {
                ...item,
                quantity: item.id === action.payload ? item.quantity >= 10 ? item.quantity : item.quantity + 1 : item.quantity
            }
        })

        localStorage.setItem('cart', JSON.stringify(updatedState))

        return {
            cart: updatedState
        }
    }
    else if(action.type === "DECREMENT"){
        let updatedState = []

        updatedState = state.cart.map((item)=>{
            return{
                ...item,
                quantity: item.id === action.payload ? item.quantity <= 1 ? item.quantity : item.quantity - 1 : item.quantity
            }
        })

        localStorage.setItem('cart', JSON.stringify(updatedState))
        
        return{
            cart: updatedState
        }
    }
    else if(action.type === "DELETE_FROM_CART"){
        let ThenDelete = state.cart.filter(item => item.id != action.payload)


        localStorage.setItem('cart', JSON.stringify(ThenDelete))

        return {
            cart: ThenDelete
        }
    }
    else if(action.type === "CLEAR_CART"){

        let updateState = []

        localStorage.removeItem('cart')

        return{
            cart: updateState
        }
    }
    else {
        return state
    }
}

export default CartReducer