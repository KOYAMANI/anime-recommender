import { AuthState } from './slices/authSlice'

interface RootState {
    auth: AuthState
    // Other slices of state go here
}

export default RootState
