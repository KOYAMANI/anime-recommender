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
        <div className="w-3/4 h-72 flex mt-4 space-x-4 overflow-auto">
            {isLoading ? (
                <p >Loading...</p>
            ) : (
                animes.map((anime: Anime) => (
                    <div key={anime.title} className="relative w-auto flex-shrink-0 overflow-hidden">
                        <img
                        src={anime.image_url}
                        alt="anime"
                        className="w-full h-full object-cover"
                        />
                        <div className="absolute inset-0 flex items-center justify-center pl-3 pr-3">
                          <p className="text-white text-m bg-black bg-opacity-70 pl-3 pr-3">{anime.title}</p>
                        </div>
                    </div>
                ))
            )}
        </div>
    )
}

export default ResultContainer
