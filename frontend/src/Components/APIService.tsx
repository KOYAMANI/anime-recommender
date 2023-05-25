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
        const res = await fetch(`${process.env.REACT_APP_API_URL}api/anime`, {
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
        const res = await fetch(`${process.env.REACT_APP_API_URL}api/suggestions`, {
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

    async user_login_mal(codeVerifier: string, code: string) {
        // const params = new URLSearchParams(wisndow.location.search);
        // const code = params.get('code');
        if (!code) {
            // Build the URL for MyAnimeList authorization
            const url = new URL('https://myanimelist.net/v1/oauth2/authorize')
            url.searchParams.append('response_type', 'code')
            url.searchParams.append('client_id', 'your-client-id')
            url.searchParams.append('code_challenge', codeVerifier)
            url.searchParams.append('code_challenge_method', 'plain')
            url.searchParams.append('state', 'your-state')
            url.searchParams.append(
                'redirect_uri',
                'http://localhost:3000/callback'
            )

            // Redirect the user to MyAnimeList for authorization
            window.location.href = url.href
        } else {
            // Exchange the authorization code for an access token
            const res = await fetch(
                '${process.env.REACT_APP_API_URL}api/log-in-with-mal',
                {
                    method: 'POST',
                    headers: {
                        code: code,
                        code_verifier: codeVerifier,
                    },
                }
            )
                .then((res) => res.json())
                .catch((err) => console.log(err))
            console.log(res.data)

            return res.data.access_token
        }
    }

    async generate_code_verifier() {
        const res = await fetch(
            `http://localhost:8080/api/generate-code-verifier`,
            {
                method: 'POST',
            }
        )
            .then((res) => res.json())
            .catch((err) => console.log(err))
        if (res.message) {
            throw Error(res.message)
        } else {
            console.log(res)
            return res
        }
    }
}
