import React, { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'

const User: React.FC = () => {
    const [username, setUsername] = useState('')
    const navigate = useNavigate()

    useEffect(() => {
        const token = localStorage.getItem('token')
        if (!token) navigate('/login')

        const userName = localStorage.getItem('userName')
        if (userName) setUsername(userName)
        else console.log('no username')
    }, [navigate])

    return (
        <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
            <h1 className="text-3xl mb-4">
                Synced with your MyAnimeList account
            </h1>
            <p>Welcome back {username}</p>
        </div>
    )
}

export default User
