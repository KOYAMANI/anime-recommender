import React, { useState } from 'react';
import { CiUnread, CiRead } from 'react-icons/ci'; 

const Signup: React.FC = () => {
  const [email, setEmail] = useState('');
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);

  const handleTogglePasswordVisibility = () => {
    setShowPassword(!showPassword);
  };

  return (
    <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
      <h1 className="text-3xl mb-4">Signup</h1>
      <input 
        className="mb-2 p-2 text-black rounded-md"
        type="text" 
        placeholder="Username" 
        value={username} 
        onChange={(e) => setUsername(e.target.value)} 
      />
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
      <button className="bg-blue-500 p-2 rounded text-white">Signup</button>
    </div>
  );
};

export default Signup;
