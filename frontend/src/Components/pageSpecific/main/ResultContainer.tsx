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

const ResultContainer: React.FC<ResultContainerProps> = ({ isLoading, animes }) => {
    return (
      <div className="w-3/4 flex overflow-x-auto mt-4 space-x-4">
        {isLoading ? (
          <p>Loading...</p>
        ) : (
          animes.map((anime: Anime) => (
            <div key={anime.title} className="relative">
              <img src={anime.image_url} alt="anime" className="w-64" />
              <div className="absolute inset-0 bg-black bg-opacity-50 flex items-center justify-center">
                <p className="text-white text-s">{anime.title}</p>
              </div>
            </div>
          ))
        )}
      </div>
    );
  };

export default ResultContainer
