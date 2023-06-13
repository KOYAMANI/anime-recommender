import React, { useState, useEffect } from 'react'
import { useNavigate, useLocation } from 'react-router-dom'
import Alert from '../Components/common/alert/Alert'
import { loginSuccess } from '../redux/slices/authSlice'

import APIService from '../Services/APIService'
import LoadingSpinner from '../Components/common/loadingSpinner/LoadingSpinner'

const MyAnimeListLogin: React.FC = () => {
    const [error, setError] = useState('')
    const [isPageLoading, setIsPageLoading] = useState(true)

    const navigate = useNavigate()

    const apiService = new APIService()

    useEffect(() => {
        const token = localStorage.getItem('token')
        if (token) navigate('/user')
        else {
            const urlParams = new URLSearchParams(location.search)
            const error = urlParams.get('error')
            if (error) {
                setError(error)
            }
            setIsPageLoading(false)
            console.log('not authenticated')
        }
    }, [navigate, location])

    const handleLogin = async () => {
        const oauthUrl = await apiService.getOAuthUrl()
        window.location.href = oauthUrl
    }

    if (isPageLoading) {
        return (
            <div className="flex items-center justify-center min-h-screen">
                <LoadingSpinner />
            </div>
        )
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
            <p className="mt-4">
                For us to provide better user experience, 
            </p>
            <p>
                we recommend synchronizing your <a href="https://myanimelist.net" className="text-blue-500" target="_blank">MyAnimeList</a> account
            </p>
            
            <div className="w-full h-12 flex items-center justify-center mt-4">
                {error && <Alert type="error" message={error} />}
            </div>
        </div>
    )
}

export default MyAnimeListLogin
