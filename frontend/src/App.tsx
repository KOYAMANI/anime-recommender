import React, { useEffect, useState } from 'react'
import logo from './public/icons/girl.png'
import './App.css'
import APIService from './Components/APIService'

function App() {
    const [title, setTitle] = useState('')
    const [error, setError] = useState('')
    const [animes, setAnimes] = useState([])
    const [isLoading, setIsLoading] = useState(false)

    const apiService = new APIService()

    interface Anime {
        title: string
        image_url: string
    }

    useEffect(() => {
        apiService
            .getHello()
            .then((res) => console.log(res))
            .catch((err) => console.log(err))
    }, [])

    const handleChange = (event: any) => {
        setTitle(event.target.value)
    }

    const submitForm = (event: React.FormEvent<HTMLFormElement>) => {
        setIsLoading(true)
        setAnimes([])
        setError('')
        event.preventDefault()
        if (title === '') {
            setError('Please enter a title')
            setIsLoading(false)
        } else {
            apiService
                .getRecommendation(title)
                .then((res) => {
                    setAnimes(res)
                    setIsLoading(false)
                })
                .catch((err) => setError(err.message))
            setTitle('')
        }
    }

    return (
        <div className="App">
            <header className="App-header">
                <img src={logo} className="App-logo" alt="logo" />
                <p>Anime recommender</p>
                <form onSubmit={submitForm}>
                    <input
                        value={title}
                        onChange={(e) => handleChange(e)}
                        type="text"
                        placeholder="Enter anime title"
                        className="input"
                    />
                    <button type="submit" className="btn">
                        Search
                    </button>
                </form>
                <div>
                    {isLoading && (
                        <div>
                            <p>Loading...</p>
                        </div>
                    )}
                    {animes ? (
                        <div>
                            {animes.map((anime: Anime) => {
                                return (
                                    <div>
                                        <p
                                            key={anime.title}
                                        >{`${anime.title}`}</p>
                                        <img
                                            key={anime.title}
                                            src={`${anime.image_url}`}
                                            alt="anime"
                                        />
                                    </div>
                                )
                            })}
                        </div>
                    ) : null}
                </div>
                <div>{error ? <p>{error}</p> : null}</div>
            </header>
        </div>
    )
}

export default App
