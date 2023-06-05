import React, { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import APIService from '../Components/APIService'

const User: React.FC = () => {
    const [username, setUsername] = useState('')
    const [userId, setUserId] = useState('')
    const navigate = useNavigate()
    const apiService = new APIService()

    useEffect(() => {
        const token = localStorage.getItem('token')
        if (!token) navigate('/login')

        const userName = localStorage.getItem('userName')
        if (userName) setUsername(userName)
        else console.log('no username')

        const userId = localStorage.getItem('userId')
        if (userId) {
            setUserId(userId)
            apiService.getUserHistory(userId).then((res) => {
            console.log(res)
            })
        } else console.log('no userId')

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
