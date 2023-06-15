import { render, fireEvent, screen } from '@testing-library/react'
import SearchContainer from './SearchContainer'

describe('<SearchContainer />', () => {
    const mockTitle = 'Naruto'
    const mockShowSuggestions = true
    const mockSearchResults = ['Naruto', 'Naruto Shippuden']
    const mockHandleChange = jest.fn()
    const mockHandleSuggestionClick = jest.fn()
    const mockHandleSubmit = jest.fn()

    test('renders without crashing and checks functionality', () => {
        render(
            <SearchContainer
                title={mockTitle}
                showSuggestions={mockShowSuggestions}
                searchResults={mockSearchResults}
                handleChange={mockHandleChange}
                handleSuggestionClick={mockHandleSuggestionClick}
                handleSubmit={mockHandleSubmit}
            />
        )

        // Check if the input field value is correct
        expect(screen.getByDisplayValue(mockTitle)).toBeInTheDocument()

        // Check if the suggestions are displayed
        mockSearchResults.forEach((suggestion) => {
            expect(screen.getByText(suggestion)).toBeInTheDocument()
        })

        // Check if handleChange is called when input value changes
        fireEvent.change(screen.getByDisplayValue(mockTitle), {
            target: { value: 'New Value' },
        })
        expect(mockHandleChange).toHaveBeenCalled()

        // Check if handleSubmit is called when form is submitted
        fireEvent.submit(screen.getByDisplayValue(mockTitle))
        expect(mockHandleSubmit).toHaveBeenCalled()

        // Check if handleSuggestionClick is called when a suggestion is clicked
        fireEvent.click(screen.getByText(mockSearchResults[0]))
        expect(mockHandleSuggestionClick).toHaveBeenCalled()
    })
})
