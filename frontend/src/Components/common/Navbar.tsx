import React from 'react';
import { CiHome, CiUser, CiLogout } from "react-icons/ci";
import { Link } from 'react-router-dom';

const Navbar: React.FC = () => {
  return (
    <nav className="flex justify-between items-center bg-blue-500 p-3 text-white">
      <div className="flex space-x-2">
        <Link to="/">
            <CiHome className="text-2xl" />
        </Link>
        {/* Here you should add a condition to check whether the user is logged in */}
        {/* if (user) return <Link to="/user"><CiUser className="text-2xl" /></Link> */}
        {/* else return <Link to="/signup"><CiUser className="text-2xl" /></Link> */}
        <Link to="/signup">
          <CiUser className="text-2xl" />
        </Link>
        <CiLogout className="text-2xl" />
      </div>
    </nav>
  );
}

export default Navbar;