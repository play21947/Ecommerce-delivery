let initialState = {
    userData: [],
    isLoading: false,
    isError: false
}


let LoginReducer=(state = initialState, action)=>{
    if(action.type === "START_LOGIN"){
        return{
            isLoading: true,
            isError: false,
            userData: []
        }
    }
    else if(action.type === "RECEIVE_LOGIN"){
        return{
            userData: action.payload,
            isLoading: false,
            isError: false
        }
    }
    else if(action.type === "ERROR_LOGIN"){
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


export default LoginReducer