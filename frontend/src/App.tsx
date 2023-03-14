import React, { useEffect, useState } from 'react'
import logo from './public/icons/girl.png'
import './App.css'
import APIService from './Components/APIService'

function App() {
    const [title, setTitle] = useState('')
    const [error, setError] = useState('')
    const [animes, setAnimes] = useState([])

    const apiService = new APIService()

    type Anime = {
        'title': string
        'rating': number
    }

    useEffect(() => {
        apiService
            .getHello()
            .then((res) => console.log(res))
            .catch((err) => console.log(err))
    }, [])

    const handleChange = (event: any)=>{
      setTitle(event.target.value)
    }

    const submitForm = (event: React.FormEvent<HTMLFormElement>) => {
      event.preventDefault()
      if(title === ''){
        setError('Please enter a title')
      } else {
        apiService.getRecommendation(title)
      .then((res) => setAnimes(res))
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
                    onChange={e => handleChange(e)}
                    type="text"
                    placeholder="Enter anime title"
                    className="input"
                  />
                  <button type="submit" className="btn">Search</button>
                  
                </form>
                <div>
                    {animes ? 
                    <div>
                      {animes.map((anime: Anime) => {
                        return (
                          <div>
                            <p >{`${anime['title']} : ${anime['rating']} `}</p>
                          </div>
                        )
                      })}
                    </div> : 
                    null}
                </div>
                <div>
                {error? <p>{error}</p>: null}
                </div>
            </header>
        </div>
    )
}

export default App
