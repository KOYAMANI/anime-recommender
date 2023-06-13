import React, { useState, useEffect } from 'react'

type AlertProps = {
    message: string | null
    type: 'primary' | 'warning' | 'error'
}

const Alert: React.FC<AlertProps> = ({ message, type }) => {
    const [visible, setVisible] = useState<boolean>(false)
    const alertStyles = {
        primary: 'bg-blue-500 text-white',
        warning: 'bg-yellow-500 text-black',
        error: 'bg-red-500 text-white',
    }

    useEffect(() => {
        if (message) {
            setVisible(true)
            const timer = setTimeout(() => {
                setVisible(false)
            }, 3500)

            return () => {
                clearTimeout(timer)
            }
        }
    }, [message])

    if (!visible) {
        return null
    }

    return (
        <div
            className={`w-full h-10 flex items-center justify-center rounded-md mb-2 ${alertStyles[type]}`}
        >
            <p>{message}</p>
        </div>
    )
}

export default Alert
