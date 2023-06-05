import { createSlice } from '@reduxjs/toolkit'

interface AuthState {
    token: string | null
    userName: string | null
    userId: string | null
    loading: boolean
}

const initialState: AuthState = {
    token: null,
    userName: null,
    userId: null,
    loading: false,
}

export const authSlice = createSlice({
    name: 'auth',
    initialState,
    reducers: {
        loginRequest: (state) => {
            state.loading = true
        },
        loginSuccess: (state, action) => {
            state.token = action.payload.token
            state.userName = action.payload.userName
            state.userId = action.payload.userId
            state.loading = false
            localStorage.setItem('token', action.payload.token)
            localStorage.setItem('userName', action.payload.userName)
            localStorage.setItem('userId', action.payload.userId)
        },
        logout: (state) => {
            state.token = null
            state.userName = null
            state.userId = null
            localStorage.removeItem('token')
            localStorage.removeItem('userName')
            localStorage.removeItem('userId')
        },
    },
})

export const { loginSuccess, logout } = authSlice.actions

export default authSlice.reducer
export type { AuthState }
