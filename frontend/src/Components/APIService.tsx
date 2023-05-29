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

    async getRecommendation(title: string) {
        const res = await fetch(`${process.env.REACT_APP_API_URL}api/v1/anime/recommend`, {
            method: 'POST',
            headers: {
                cors: 'no-cors',
                'content-type': 'application/json',
            },
            body: JSON.stringify({
                title: title,
            }),
        })
        if (!res.ok) throw new Error(`HTTP error! status: ${res.status}`)
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

    async user_signup(name: string, email: string, password: string) {
        const res = await fetch(`${process.env.REACT_APP_API_URL}api/signup`, {
            method: 'POST',
            headers: {
                cors: 'no-cors',
                'content-type': 'application/json',
            },
            body: JSON.stringify({
                name: name,
                email: email,
                password: password,
            }),
        })
        const data = await res.json()
        if (!res.ok) throw new Error(`${res.status}: ${data.error}`)
        return data
    }

    async user_login(email: string, password: string) {
        const res = await fetch(`${process.env.REACT_APP_API_URL}api/login`, {
            method: 'POST',
            headers: {
                cors: 'no-cors',
                'content-type': 'application/json',
            },
            body: JSON.stringify({
                email: email,
                password: password,
            }),
        })
            .then((res) => res.json())
            .catch((err) => console.log(err))
        console.log(res)
        return res
    }

    async mal_oauth(codeVerfier: string){
        const res = await fetch(`${process.env.REACT_APP_API_URL}api/v1/oauth/authorize`, {
            method: 'POST',
            headers: {
                cors: 'no-cors',
                'content-type': 'application/json',
            },
            body: JSON.stringify({
                'code_verifier': codeVerfier,
            }),
        })
        console.log(res)
        return res
    }

}
