import { createSlice } from '@reduxjs/toolkit'

interface LoadingState {
    [key: string]: boolean
}

const initialState: LoadingState = {
    FETCH_SUGGESTIONS: false,
    FETCH_RECOMMENDATIONS: false,
}

export const loadingSlice = createSlice({
    name: 'loading',
    initialState,
    reducers: {
        startLoading: (state, action) => {
            state[action.payload] = true
        },
        finishLoading: (state, action) => {
            state[action.payload] = false
        },
    },
})

export const { startLoading, finishLoading } = loadingSlice.actions

export default loadingSlice.reducer
export type { LoadingState }
