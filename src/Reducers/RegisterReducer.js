let initialState = {
    userData: [],
    isLoading: false,
    isError: false
}


let RegisterReducer=(state = initialState, action)=>{
    if(action.type === "START_REGISTER"){
        return{
            isLoading: true,
            isError: false,
            userData: []
        }
    }
    else if(action.type === "RECEIVE_REGISTER"){
        return{
            userData: action.payload,
            isLoading: false,
            isError: false
        }
    }
    else if(action.type === "ERROR_REGISTER"){
        return{
            isError: true,
            isLoading: false,
            userData: []
        }
    }
    else{
        return state
    }
}

export default RegisterReducer