import React from 'react';
import { useSelector } from 'react-redux';

const User: React.FC = () => {
  const username = "John Doe"; // Get this from your auth state or context

  return (
    <div className="flex flex-col items-center justify-center min-h-screen bg-gray-900 text-white p-4">
      <h1 className="text-3xl mb-4">User</h1>
      <p>Welcome, {username}</p>
    </div>
  );
};

export default User;