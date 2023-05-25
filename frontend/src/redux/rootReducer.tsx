import { combineReducers } from '@reduxjs/toolkit'
import authReducer from './slices/authSlice'
import loadingReducer from './slices/loadingSlice'

const rootReducer = combineReducers({
    auth: authReducer,
    loading: loadingReducer,
})

export default rootReducer
