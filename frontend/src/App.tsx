import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { Provider } from 'react-redux';
import store from './redux/store';
import Navbar from './Components/common/Navbar';
import Main from './Pages/Main';
import Signup from './Pages/Signup';
import User from './Pages/User';
import Login from './Pages/Login';

function App() {
  return (
    <Provider store={store}>
      <Router>
        <div className="App">
        <Navbar />
        <Routes>
          <Route path="/" element={<Main />} />
          <Route path="/signup" element={<Signup />} />
          <Route path="/login" element={<Login />} />   
          <Route path="/user" element={<User />} />
        </Routes>
        </div>
      </Router>
    </Provider>
  );
}

export default App;

// import React, { useEffect, useState } from "react";
// import logo from "./public/icons/girl.png";
// import "./App.css";
// import APIService from "./Components/APIService";
// import SearchContainer from "./Components/pageSpecific/main/SearchContainer";
// import ResultContainer from "./Components/pageSpecific/main/ResultContainer";
// import Navbar from "./Components/common/Navbar";

// function App() {
//   const [title, setTitle] = useState('');
//   const [error, setError] = useState('');
//   const [animes, setAnimes] = useState([]);
//   const [searchResults, setSearchResults] = useState([]);
//   const [isLoading, setIsLoading] = useState(false);
//   const [showSuggestions, setShowSuggestions] = useState(false);

//   const apiService = new APIService();

//   useEffect(() => {
//     apiService
//       .getHello()
//       .then((res) => console.log(res))
//       .catch((err) => console.log(err));
//   }, []);

//   const handleChange = (event: any) => {
//     setTitle(event.target.value);
//     if (event.target.value !== '') {
//       setSearchResults([]);
//       setError('');
//       apiService
//         .getSuggestions(event.target.value)
//         .then((res) => {
//           setSearchResults(res.data);
//           setIsLoading(false);
//           setShowSuggestions(true);
//         })
//         .catch((err) => setError(err));
//     } else {
//       setSearchResults([]);
//       setShowSuggestions(false);
//     }
//   };

//   const handleSuggestionClick = (suggestion: string) => {
//     setTitle(suggestion);
//     setShowSuggestions(false);
//   };

//   const submitForm = (event: React.FormEvent<HTMLFormElement>) => {
//     setIsLoading(true);
//     setAnimes([]);
//     setError('');
//     event.preventDefault();
//     setShowSuggestions(false);
//     if (title === '') {
//       setError('Please enter a title');
//       setIsLoading(false);
//     } else {
//       apiService
//         .getRecommendation(title)
//         .then((res) => {
//           setAnimes(res);
//           setIsLoading(false);
//         })
//         .catch((err) => setError(err.message));
//       setTitle('');
//     }
//   };

//   return (
//     <div className="App">
//       <Navbar />
//       <div className="flex flex-col items-center justify-center min-h-screen bg-gray-800 text-white">
//         <header className="flex flex-col items-center text-center">
//           <img src={logo} className="h-40 pointer-events-none" alt="logo" />
//           <p className="text-3xl">Anime recommender</p>
//           <SearchContainer
//             title={title}
//             showSuggestions={showSuggestions}
//             searchResults={searchResults}
//             handleChange={handleChange}
//             handleSuggestionClick={handleSuggestionClick}
//             handleSubmit={submitForm}
//           />
//           <ResultContainer isLoading={isLoading} animes={animes} />
//           <div>{error ? <p>{error}</p> : null}</div>
//         </header>
//       </div>
//     </div>
//   );
// }

// export default App;