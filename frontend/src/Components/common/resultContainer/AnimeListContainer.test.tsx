import { render, screen } from '@testing-library/react'
import AnimeListContainer from './AnimeListContainer'

describe('<AnimeListContainer />', () => {
    const mockAnimes = [
        {
            id: 1,
            title: 'Chainsaw Man',
            image_url:
                'https://cdn.myanimelist.net/images/anime/1806/126216l.jpg',
        },
        {
            id: 2,
            title: 'Tengen Toppa Gurren Lagann',
            image_url: 'https://cdn.myanimelist.net/images/anime/4/5123l.jpg',
        },
    ]

    test('renders without crashing', () => {
        render(<AnimeListContainer animes={mockAnimes} />)

        // Check if the anime title and image elements are in the document
        mockAnimes.forEach((anime) => {
            const titleElement = screen.getByText(anime.title)
            expect(titleElement).toBeInTheDocument()

            const imageElement = screen.getByAltText(anime.title)
            expect(imageElement).toBeInTheDocument()
        })
    })
})
