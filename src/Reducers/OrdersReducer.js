let initialState = {
    ordersData: [],
    isLoading: false,
    isError: false
}


const OrdersReducer=(state = initialState, action)=>{
    if(action.type === "START_ORDERS"){
        return{
            isLoading: true,
            isError: false,
            ordersData: []
        }
    }
    else if(action.type === "RECEIVE_ORDERS"){
        return{
            ordersData: action.payload,
            isLoading: false,
            isError: false
        }
    }
    else if(action.type === "ERROR_ORDERS"){
        return{
            isError: true,
            isLoading: false,
            ordersData: []
        }
    }
    else{
        return state
    }
}

export default OrdersReducer