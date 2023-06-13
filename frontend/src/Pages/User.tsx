import React, { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import APIService from '../Services/APIService'
import AnimeListContainer from '../Components/common/resultContainer/AnimeListContainer'
import Alert from '../Components/common/alert/Alert'
import LoadingSpinner from '../Components/common/loadingSpinner/LoadingSpinner'

const User: React.FC = () => {
    const [username, setUsername] = useState('')
    const [userId, setUserId] = useState('')
    const [animes, setAnimes] = useState([])
    const [error, setError] = useState('')
    const [isPageLoading, setIsPageLoading] = useState(true)
    const navigate = useNavigate()
    const apiService = new APIService()

    useEffect(() => {
        const token = localStorage.getItem('token')
        if (!token) {
            navigate('/login')
        } else {
            const userName = localStorage.getItem('userName')
            if (userName) {
                setUsername(userName)
            } else {
                console.log('no username')
            }

            const userId = localStorage.getItem('userId')
            if (userId) {
                setUserId(userId)
                apiService
                    .getUserHistory(userId)
                    .then((res) => {
                        setAnimes(res)
                    })
                    .catch((errResponse) => {
                        errResponse
                            .json()
                            .then((body: { error: string }) => {
                                setError(body.error)
                            })
                            .catch(() => {
                                setError('An unexpected error occurred')
                            })
                    })
            } else {
                console.log('no userId')
            }
        }
        setIsPageLoading(false)
    }, [navigate])

    if (isPageLoading) {
        return (
            <div className="flex items-center justify-center min-h-screen">
                <LoadingSpinner />
            </div>
        )
    }

    return (
        <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
            <h1 className="text-3xl mb-4">Welcome back {username}</h1>
            <p>Your last search</p>
            {animes ? <AnimeListContainer animes={animes} /> : null}
            <div className="w-full h-12 flex items-center justify-center mt-4">
                {error && <Alert type="error" message={error} />}
            </div>
        </div>
    )
}

export default User
