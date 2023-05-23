import React, { useEffect, useState } from "react";
import SearchContainer from '../Components/pageSpecific/main/SearchContainer';
import ResultContainer from '../Components/pageSpecific/main/ResultContainer';
import APIService from "../Components/APIService";
import logo from '../public/icons/girl.png';

const Main: React.FC = () => {
    const [title, setTitle] = useState('');
    const [error, setError] = useState('');
    const [animes, setAnimes] = useState([]);
    const [searchResults, setSearchResults] = useState([]);
    const [isLoading, setIsLoading] = useState(false);
    const [showSuggestions, setShowSuggestions] = useState(false);

    const apiService = new APIService();

    useEffect(() => {
        apiService
        .getHello()
        .then((res) => console.log(res))
        .catch((err) => console.log(err));
    }, []);

    const handleChange = (event: any) => {
        setTitle(event.target.value);
        if (event.target.value !== '') {
        setSearchResults([]);
        setError('');
        apiService
            .getSuggestions(event.target.value)
            .then((res) => {
            setSearchResults(res.data);
            setIsLoading(false);
            setShowSuggestions(true);
            })
            .catch((err) => setError(err));
        } else {
        setSearchResults([]);
        setShowSuggestions(false);
        }
    };

    const handleSuggestionClick = (suggestion: string) => {
        setTitle(suggestion);
        setShowSuggestions(false);
    };

    const submitForm = (event: React.FormEvent<HTMLFormElement>) => {
        setIsLoading(true);
        setAnimes([]);
        setError('');
        event.preventDefault();
        setShowSuggestions(false);
        if (title === '') {
        setError('Please enter a title');
        setIsLoading(false);
        } else {
        apiService
            .getRecommendation(title)
            .then((res) => {
            setAnimes(res);
            setIsLoading(false);
            })
            .catch((err) => setError(err.message));
        setTitle('');
        }
    };

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
        <ResultContainer isLoading={isLoading} animes={animes} />
        <div>{error ? <p>{error}</p> : null}</div>
        </header>
    );
}

export default Main;
