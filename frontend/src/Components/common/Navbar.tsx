import React from 'react'
import { CiHome, CiUser, CiLogout } from 'react-icons/ci'
import { Link } from 'react-router-dom'
import { useNavigate } from 'react-router-dom'
import { useDispatch, useSelector } from 'react-redux'
import { logout } from '../../redux/slices/authSlice'
import RootState from '../../redux/rootState'

const Navbar: React.FC = () => {
    const auth = useSelector((state: RootState) => state.auth)

    const navigate = useNavigate()
    const dispatch = useDispatch()

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
                <Link to="/user">
                    <CiUser className="text-2xl" />
                </Link>
            </div>
            {auth.token ? (
                <div className="flex space-x-2">
                    <div>
                        {auth.username ? (
                            <p className="text-xs">{auth.username}</p>
                        ) : null}
                    </div>
                    <Link to="/login">
                        <CiLogout
                            className="text-2xl"
                            onClick={logOutHandler}
                        />
                    </Link>
                </div>
            ) : null}
        </nav>
    )
}

export default Navbar
