import { useEffect } from 'react'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'
import { Provider, useDispatch } from 'react-redux'

import store from './redux/store'
import { loginSuccess } from './redux/slices/authSlice'

import Navbar from './Components/common/Navbar'
import MyAnimeListLogin from './Pages/MyAnimeListLogin'
import Main from './Pages/Main'
import User from './Pages/User'

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
                </Routes>
            </div>
        </Router>
    </Provider>
)

export default RootApp
