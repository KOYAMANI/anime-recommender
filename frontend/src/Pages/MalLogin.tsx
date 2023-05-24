import React, { useState, useEffect } from 'react'

import APIService from '../Components/APIService'

const MalLogin: React.FC = () => {
    const [error, setError] = useState('')
    const [codeVerifier, setCodeVerifier] = useState('')
    const apiService = new APIService()

    useEffect(() => {
        const getCodeVerifier = async () => {
            const res = await apiService.generate_code_verifier()
            setCodeVerifier(res.data.code_verifier)
        }

        getCodeVerifier()
    }, [])

    const handleLogin = async () => {
        const params = new URLSearchParams(window.location.search)
        const code = params.get('code')

        if (code) await apiService.user_login_mal(codeVerifier, code)
    }

    return (
        <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
            <h1 className="text-3xl mb-4">Login</h1>
            <form
                onSubmit={handleLogin}
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
