import { combineReducers } from "redux";
import CartReducer from "./CartReducer";
import LoginReducer from "./LoginReducer";
import OrdersReducer from "./OrdersReducer";
import RegisterReducer from "./RegisterReducer";
import StockReducer from "./StockReducer";
import UserReducer from "./UserReducer";

const AllReducers = combineReducers({
    login_data: LoginReducer,
    register_data: RegisterReducer,
    stock_data: StockReducer,
    cart: CartReducer,
    user_data: UserReducer,
    order_data: OrdersReducer
})

export default AllReducers