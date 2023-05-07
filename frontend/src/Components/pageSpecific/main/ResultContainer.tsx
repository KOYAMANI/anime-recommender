// ResultContainer.tsx
import React from 'react'

interface Anime {
    title: string
    image_url: string
}

interface ResultContainerProps {
    isLoading: boolean
    animes: Anime[]
}

const ResultContainer: React.FC<ResultContainerProps> = ({
    isLoading,
    animes,
}) => {
    return (
        <div>
            {isLoading && (
                <div>
                    <p>Loading...</p>
                </div>
            )}
            {animes ? (
                <div>
                    {animes.map((anime: Anime) => (
                        <div key={anime.title}>
                            <p>{`${anime.title}`}</p>
                            <img src={`${anime.image_url}`} alt="anime" />
                        </div>
                    ))}
                </div>
            ) : null}
        </div>
    )
}

export default ResultContainer
