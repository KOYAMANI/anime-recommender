import { createSlice } from '@reduxjs/toolkit'

interface AuthState {
    token: string | null
    username: string | null
}

const initialState: AuthState = {
    token: null,
    username: null,
}

export const authSlice = createSlice({
    name: 'auth',
    initialState,
    reducers: {
        login: (state, action) => {
            state.token = action.payload.token
            state.username = action.payload.username
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

export const { login, logout } = authSlice.actions

export default authSlice.reducer
export type { AuthState }
