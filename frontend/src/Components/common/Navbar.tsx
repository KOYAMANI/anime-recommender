import React, { useEffect, useState } from 'react'
import { CiHome, CiUser, CiLogout } from 'react-icons/ci'
import { Link } from 'react-router-dom'
import RootState from '../../redux/rootState'
import { useNavigate } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'
import { logout } from '../../redux/slices/authSlice'

const Navbar: React.FC = () => {
    const [token, setToken] = useState('')
    const [username, setUsername] = useState('')

    const navigate = useNavigate()
    const dispatch = useDispatch()

    useEffect(() => {
        const token = localStorage.getItem('token')
        const username = localStorage.getItem('username')
        if (token) setToken(token)
        if (username) setUsername(username)
    }, [dispatch])

    const logOutHandler = () => {
        localStorage.removeItem('token')
        dispatch(logout())
        navigate('/login')
    }

    return (
        <nav className="flex justify-between items-center bg-blue-500 p-3 text-white">
            <div className="flex space-x-2">
                <Link to="/">
                    <CiHome className="text-2xl" />
                </Link>
                {/* Here you should add a condition to check whether the user is logged in */}
                {/* if (user) return <Link to="/user"><CiUser className="text-2xl" /></Link> */}
                {/* else return <Link to="/signup"><CiUser className="text-2xl" /></Link> */}
                <Link to="/user">
                    <CiUser className="text-2xl" />
                </Link>
                <div>
                    {token ? (
                        <Link to="/login">
                            <CiLogout
                                className="text-2xl"
                                onClick={logOutHandler}
                            />
                        </Link>
                    ) : null}
                </div>
                <div>
                  {username ? (
                      <p className="text-s">username:{username}</p>
                  ) : null}
                </div>
            </div>
        </nav>
    )
}

export default Navbar
