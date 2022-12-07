let initialState = {
    userData: [],
    isLoading: false,
    isError: false
}

const UserReducer=(state = initialState, action)=>{
    if(action.type === "START_USER"){
        return{
            isLoading: true,
            isError: false,
            userData: []
        }
    }
    else if(action.type === "RECEIVE_USER"){
        return{
            userData: action.payload,
            isLoading: false,
            isError: false
        }
    }
    else if(action.type === "ERROR_USER"){
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

export default UserReducer