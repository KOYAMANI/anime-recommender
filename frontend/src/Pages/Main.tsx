import React, { useEffect, useState } from 'react'
import SearchContainer from '../Components/pageSpecific/main/SearchContainer'
import ResultContainer from '../Components/pageSpecific/main/ResultContainer'
import APIService from '../Components/APIService'
import logo from '../assets/icons/girl.png'
import { useDispatch, useSelector } from 'react-redux'
import RootState from '../redux/rootState'
import { finishLoading, startLoading } from '../redux/slices/loadingSlice'
import LoadingSpinner from '../Components/common/LoadingSpinner'
import { Link } from 'react-router-dom'

const Main: React.FC = () => {
    const [title, setTitle] = useState('')
    const [error, setError] = useState('')
    const [animes, setAnimes] = useState([])
    const [searchResults, setSearchResults] = useState([])
    const [showSuggestions, setShowSuggestions] = useState(false)
    const userId = useSelector((state: RootState) => state.auth.userId)
        ? localStorage.getItem('userId')
        : undefined

    const apiService = new APIService()

    const dispatch = useDispatch()
    const isSuggestionsLoading = useSelector(
        (state: RootState) => state.loading['FETCH_SUGGESTIONS']
    )
    const isRecLoading = useSelector(
        (state: RootState) => state.loading['FETCH_RECOMMENDATIONS']
    )
    console.log(isRecLoading)

    useEffect(() => {
        console.log(process.env.REACT_APP_API_URL)
        apiService
            .getHealth()
            .then((res) => console.log(res))
            .catch((err) => console.log(err))
    }, [])

    const handleChange = (event: any) => {
        setTitle(event.target.value)
        dispatch(startLoading('FETCH_SUGGESTIONS'))
        if (event.target.value !== '') {
            setSearchResults([])
            setError('')
            apiService
                .getSuggestions(event.target.value)
                .then((res) => {
                    setSearchResults(res.data)
                    setShowSuggestions(true)
                    dispatch(finishLoading('FETCH_SUGGESTIONS'))
                })
                .catch((err) => {
                    console.error(err)
                    setError(err.message || 'An unexpected error occurred')
                    dispatch(finishLoading('FETCH_SUGGESTIONS'))
                })
        } else {
            setSearchResults([])
            dispatch(finishLoading('FETCH_SUGGESTIONS'))
        }
    }

    const handleSuggestionClick = (suggestion: string) => {
        setTitle(suggestion)
        setShowSuggestions(false)
    }

    const submitForm = (event: React.FormEvent<HTMLFormElement>) => {
        dispatch(startLoading('FETCH_RECOMMENDATIONS'))
        setAnimes([])
        setError('')
        event.preventDefault()
        setShowSuggestions(false)
        if (title === '') {
            setError('Please enter a title')
            dispatch(finishLoading('FETCH_RECOMMENDATIONS'))
        } else {
            apiService
                .getRecommendation(title, userId || undefined)
                .then((res) => {
                    setAnimes(res)
                    setTitle('')
                    dispatch(finishLoading('FETCH_RECOMMENDATIONS'))
                })
                .catch((err) => {
                    setError(err.message)
                    dispatch(finishLoading('FETCH_RECOMMENDATIONS'))
                })
        }
    }

    return (
        <header className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
            <img src={logo} className="h-40 mb-8" alt="logo" />
            <SearchContainer
                title={title}
                showSuggestions={showSuggestions}
                searchResults={searchResults}
                handleChange={handleChange}
                handleSuggestionClick={handleSuggestionClick}
                handleSubmit={submitForm}
            />
            {isRecLoading ? (
                <LoadingSpinner />
            ) : (
                <ResultContainer animes={animes} />
            )}
            <div>{error ? <p>{error}</p> : null}</div>
        </header>
    )
}

export default Main
