import { createSlice } from '@reduxjs/toolkit';

interface AuthState {
  token: string | null;
  username: string | null;
}

const initialState: AuthState = {
  token: null,
  username: null,
};

export const authSlice = createSlice({
  name: 'auth',
  initialState,
  reducers: {
    login: (state, action) => {
      state.token = action.payload;
      state.username = action.payload;
    },
    logout: (state) => {
      state.token = null;
      state.username = null;
    },
  },
});

export const { login, logout } = authSlice.actions;

export default authSlice.reducer;
export type { AuthState }
