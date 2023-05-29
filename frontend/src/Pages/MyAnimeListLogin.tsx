import React, { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { useDispatch } from 'react-redux'
import { loginSuccess } from '../redux/slices/authSlice'

import APIService from '../Components/APIService'

const MyAnimeListLogin: React.FC = () => {
    const [error, setError] = useState('')
    const [codeVerifier, setCodeVerifier] = useState('')

    const navigate = useNavigate()
    const dispatch = useDispatch()

    const apiService = new APIService()

    useEffect(() => {
        const token = localStorage.getItem('token')
        if (token) navigate('/user')
        else console.log('not authenticated')
    }, [navigate])

    const handleLogin = async () => {
        const oauthUrl = await apiService.getOAuthUrl()
        window.location.href = oauthUrl
    }

    return (
        <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
            <h1 className="text-3xl mb-4">Login</h1>
            <form
                onSubmit={(e) => {
                    e.preventDefault()
                    handleLogin()
                }}
                className="flex flex-col justify-center"
            >
                <button
                    className="bg-blue-500 p-2 rounded text-white"
                    type="submit"
                >
                    Login with MyAnimeList
                </button>
            </form>
            <div>{error ? <p className="text-red-500">{error}</p> : null}</div>
        </div>
    )
}

export default MyAnimeListLogin
