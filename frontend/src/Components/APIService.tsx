export default class APIService {
    async getHealth() {
        const res = await fetch(`${process.env.REACT_APP_API_URL}api/health`, {
            method: 'GET',
            headers: {
                cors: 'no-cors',
                'content-type': 'application/json',
            },
        })
            .then((res) => res.json())
            .catch((err) => console.log(err))
        return res
    }

    async getRecommendation(title: string, userId?: string) {
        const res = await fetch(
            `${process.env.REACT_APP_API_URL}api/v1/anime/recommend/${userId}`,
            {
                method: 'POST',
                headers: {
                    cors: 'no-cors',
                    'content-type': 'application/json',
                },
                body: JSON.stringify({
                    title: title,
                }),
            }
        )
        if (!res.ok) throw res;
        return res.json()
    }

    async getSuggestions(title: string) {
        const res = await fetch(
            `${process.env.REACT_APP_API_URL}api/v1/search-suggestion`,
            {
                method: 'POST',
                headers: {
                    cors: 'no-cors',
                    'content-type': 'application/json',
                },
                body: JSON.stringify({
                    title: title,
                }),
            }
        )
        if (!res.ok) throw new Error(`HTTP error! status: ${res.status}`)
        return res.json()
    }

    async getUserHistory(userId: string) {
        const res = await fetch(
            `${process.env.REACT_APP_API_URL}api/v1/users/history/${userId}`,
            {
                method: 'GET',
                headers: {
                    cors: 'no-cors',
                    'content-type': 'application/json',
                },
            }
        )
        if (!res.ok) throw new Error(`HTTP error! status: ${res.status}`)
        return res.json()
    }

    async getOAuthUrl() {
        const oauthUrl = `${process.env.REACT_APP_API_URL}api/v1/oauth/authorize`
        return oauthUrl
    }
}
