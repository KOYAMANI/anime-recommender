import { useEffect } from 'react'
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom'
import { Provider, useDispatch } from 'react-redux'

import store from './redux/store'
import { loginSuccess } from './redux/slices/authSlice'

import Navbar from './Components/common/navBar/Navbar'
import MyAnimeListLogin from './Pages/MyAnimeListLogin'
import Main from './Pages/Main'
import User from './Pages/User'
import Callback from './Pages/Callback'

const App = () => {
    const dispatch = useDispatch()

    useEffect(() => {
        const token = localStorage.getItem('token')
        if (token) {
            dispatch(loginSuccess(token))
        }
    }, [dispatch])

    return <App />
}

const RootApp = () => (
    <Provider store={store}>
        <Router>
            <div className="App">
                <Navbar />
                <Routes>
                    <Route path="/" element={<Main />} />
                    <Route path="/user" element={<User />} />
                    <Route path="/login" element={<MyAnimeListLogin />} />
                    <Route path="/callback" element={<Callback />} />
                    <Route path="*" element={<Navigate to="/" />} />
                </Routes>
            </div>
        </Router>
    </Provider>
)

export default RootApp
