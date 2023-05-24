import React, { useState } from 'react';
import { CiUnread, CiRead } from 'react-icons/ci'; 
import { Link } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import { login } from '../redux/slices/authSlice';

import APIService from '../Components/APIService';

const Signup: React.FC = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [error, setError] = useState('');

  const apiService = new APIService();
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const handleTogglePasswordVisibility = () => {
    setShowPassword(!showPassword);
  };

  const handleSubmit = (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault(); // Prevent page reload
    apiService.user_login(email, password)
        .then((res) => {
            console.log(res);
            dispatch(login({ token: res.access_token, username: res.username })); 
            navigate('/home');
        })
        .catch((err) => {
            console.error(err);
            // Display the error message from the backend to the user
            setError(err.message || 'An unexpected error occurred');
        });
  };

  return (
    <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
      <h1 className="text-3xl mb-4">Login</h1>
      <form onSubmit={handleSubmit} className='flex flex-col justify-center'>
      <input 
        className="mb-2 p-2 text-black rounded-md"
        type="email" 
        placeholder="Email"
        value={email} 
        onChange={(e) => setEmail(e.target.value)} 
      />
      <div className="relative">
          <input
            className="mb-2 p-2 text-black rounded-md"
            type={showPassword ? "text" : "password"}
            placeholder="Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
          <div
            onClick={handleTogglePasswordVisibility}
            className="absolute inset-y-0 right-0 pr-3 flex items-center cursor-pointer text-lg"
          >
            {showPassword ? <CiUnread className='text-black'/> : <CiRead className='text-black'/>}
          </div>
      </div>
      <button className="bg-blue-500 p-2 rounded text-white" type='submit'>Login</button>
      </form>
      <p>New here? <Link to='/signup' className='text-blue-500'>Sign up</Link></p>
      <div>{error ? <p className='text-red-500'>{error}</p> : null}</div>
    </div>

  );
};

export default Signup;
