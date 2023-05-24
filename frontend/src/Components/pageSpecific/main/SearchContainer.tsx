// SearchContainer.tsx
import React from 'react'

interface SearchContainerProps {
    title: string
    showSuggestions: boolean
    searchResults: string[]
    handleChange: (event: React.ChangeEvent<HTMLInputElement>) => void
    handleSuggestionClick: (suggestion: string) => void
    handleSubmit: (event: React.FormEvent<HTMLFormElement>) => void
}

const SearchContainer: React.FC<SearchContainerProps> = ({
    title,
    showSuggestions,
    searchResults,
    handleChange,
    handleSuggestionClick,
    handleSubmit,
}) => {
    return (
        <form onSubmit={handleSubmit}>
            <div className="relative">
                <div className="flex">
                    <input
                        value={title}
                        onChange={handleChange}
                        type="text"
                        placeholder="Enter anime title"
                        className="input border py-2 px-3 text-black"
                    />
                    <button
                        type="submit"
                        className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 ml-2"
                    >
                        Search
                    </button>
                </div>
                {showSuggestions && searchResults.length > 0 && (
                    <div className="absolute bg-gray-800 text-white border border-gray-300 w-full max-h-24 overflow-y-auto overflow-x-hidden z-10 shadow-lg">
                        {searchResults.map((suggestion: string) => (
                            <div
                                key={suggestion}
                                onClick={() =>
                                    handleSuggestionClick(suggestion)
                                }
                                className="text-s py-2 px-4 cursor-pointer hover:bg-gray-700"
                            >
                                {suggestion}
                            </div>
                        ))}
                    </div>
                )}
            </div>
        </form>
    )
}

export default SearchContainer
