import { createSlice } from '@reduxjs/toolkit'

interface AuthState {
    token: string | null
    username: string | null
    loading: boolean
}

const initialState: AuthState = {
    token: null,
    username: null,
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
            state.username = action.payload.username
            state.loading = false
            localStorage.setItem('token', action.payload.token)
            localStorage.setItem('username', action.payload.username)
        },
        logout: (state) => {
            state.token = null
            state.username = null
            localStorage.removeItem('token')
            localStorage.removeItem('username')
        },
    },
})

export const { loginSuccess, logout } = authSlice.actions

export default authSlice.reducer
export type { AuthState }
