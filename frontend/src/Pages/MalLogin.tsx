import React, { useState, useEffect } from 'react'

import APIService from '../Components/APIService'

const MalLogin: React.FC = () => {
    const [error, setError] = useState('')
    const [codeVerifier, setCodeVerifier] = useState('')
    const apiService = new APIService()

    useEffect(() => {
    }, [])

    const handleLogin = () => {
        const oauthUrl = `${process.env.REACT_APP_API_URL}api/authorize`; // assuming you have the base API URL in your .env file
        window.open(oauthUrl, "_blank");
    };

    return (
        <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
            <h1 className="text-3xl mb-4">Login</h1>
            <form
                onClick={handleLogin}
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

export default MalLogin
