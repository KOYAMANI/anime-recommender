import { AuthState } from './slices/authSlice'
import { LoadingState } from './slices/loadingSlice'

interface RootState {
    auth: AuthState
    loading: LoadingState
}

export default RootState
