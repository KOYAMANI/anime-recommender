import { createSlice } from '@reduxjs/toolkit'

interface AuthState {
    token: string | null
    loading: boolean
}

const initialState: AuthState = {
    token: null,
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
            state.loading = false
            localStorage.setItem('token', action.payload.token)
        },
        logout: (state) => {
            state.token = null
            localStorage.removeItem('token')
        },
    },
})

export const { loginSuccess, logout } = authSlice.actions

export default authSlice.reducer
export type { AuthState }
