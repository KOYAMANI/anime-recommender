import React, { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { useDispatch } from 'react-redux'
import { loginSuccess } from '../redux/slices/authSlice'

import APIService from '../Services/APIService'

const Callback: React.FC = () => {
    const navigate = useNavigate()
    const dispatch = useDispatch()

    useEffect(() => {
        const urlParams = new URLSearchParams(window.location.search)
        const token = urlParams.get('token')
        const userName = urlParams.get('userName')
        const userId = urlParams.get('userId')
        const error = urlParams.get('error')

        if (token) {
            localStorage.setItem('token', token)
            dispatch(
                loginSuccess({
                    token: token,
                    userName: userName,
                    userId: userId,
                })
            )
            navigate('/user')
        } else if (error) {
            navigate(`/login?error=${error}`)
        } else {
            navigate('/login')
        }
    }, [navigate])

    return <div></div>
}

export default Callback
