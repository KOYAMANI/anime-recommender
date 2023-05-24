import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'
import { Provider, useDispatch } from 'react-redux'
import store from './redux/store'
import Navbar from './Components/common/Navbar'
import Main from './Pages/Main'
import Signup from './Pages/Signup'
import User from './Pages/User'
import Login from './Pages/Login'
import React, { useEffect } from 'react'
import { login } from './redux/slices/authSlice'

const App = () => {
    const dispatch = useDispatch()

    useEffect(() => {
        const token = localStorage.getItem('token')
        if (token) {
            dispatch(login(token))
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
                    <Route path="/signup" element={<Signup />} />
                    <Route path="/login" element={<Login />} />
                    <Route path="/user" element={<User />} />
                </Routes>
            </div>
        </Router>
    </Provider>
)

export default RootApp
