let initialState = {
    stockData: [],
    isLoading: false,
    isError: false
}

let StockReducer=(state = initialState, action)=>{
    if(action.type === "STOCK_START"){
        return{
            isLoading: true,
            isError: false,
            stockData: []
        }
    }
    else if(action.type === "STOCK_RECEIVE"){
        return{
            stockData: action.payload,
            isError: false,
            isLoading: false
        }
    }
    else if(action.type === "STOCK_ERROR"){
        return{
            isError: true,
            isLoading: false,
            stockData: []
        }
    }
    else{
        return state
    }
}


export default StockReducer