import React, { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'

const User: React.FC = () => {
    const [username, setUsername] = useState('')
    const navigate = useNavigate()

    useEffect(() => {
        const token = localStorage.getItem('token')
        const username = localStorage.getItem('username')
        if (token && username) setUsername(username)
        else navigate('/login')
    }, [navigate])

    return (
        <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
            <h1 className="text-3xl mb-4">My Account</h1>
            <p>Welcome, {username}</p>
        </div>
    )
}

export default User
