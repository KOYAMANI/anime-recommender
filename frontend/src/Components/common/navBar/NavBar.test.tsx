import { render, screen } from '@testing-library/react'
import { Provider } from 'react-redux'
import { configureStore } from '@reduxjs/toolkit'
import { BrowserRouter as Router } from 'react-router-dom'
import Navbar from './Navbar'
import rootReducer from '../../../redux/rootReducer'

describe('<Navbar />', () => {
    test('renders without crashing', () => {
        // Create a mock store
        const store = configureStore({
            reducer: {
                auth: rootReducer,
            },
        })

        render(
            <Provider store={store}>
                <Router>
                    <Navbar />
                </Router>
            </Provider>
        )

        // Check if the home and login links are in the document
        const homeLink = screen.getByRole('link', { name: /home/i })
        expect(homeLink).toBeInTheDocument()

        const loginLink = screen.getByRole('link', { name: /login/i })
        expect(loginLink).toBeInTheDocument()
    })
})
