export default class APIService {

    async getHello() {
        const response = await fetch('http://localhost:8080/', {
            method: 'GET',
            headers: {
                'cors': 'no-cors',
                'content-type': 'application/json',
            }
        }).then(res => res.json()).catch(err =>console.log(err))
        return response
    }

    async getRecommendation(title:string) {
        const response = await fetch(`http://localhost:8080/api/anime`, {
            method: 'POST',
            headers: {
                'cors': 'no-cors',
                'content-type': 'application/json',
            },
            body: JSON.stringify({
                title: title
              })
        })
        if(!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
        return response.json()
    }

    async getSuggestions(title:string) {
        const response = await fetch(`http://localhost:8080/api/suggestions`, {
            method: 'POST',
            headers: {
                'cors': 'no-cors',
                'content-type': 'application/json',
            },
            body: JSON.stringify({
                title: title
              })
        })
        if(!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
        return response.json()
    }

    async user_signup(name:string, email:string, password:string) {
        const response = await fetch(`http://localhost:8080/api/sign-up`, {
            method: 'POST',
            headers: {
                'cors': 'no-cors',
                'content-type': 'application/json',
            },
            body: JSON.stringify({
                name: name,
                email: email,
                password: password
              })
        })
        const data = await response.json()
        if(!response.ok) throw new Error(`${response.status}: ${data.error}`);
        return data;
    }

    async user_login(email:string, password:string) {
        const response = await fetch(`http://localhost:8080/api/log-in`, {
            method: 'POST',
            headers: {
                'cors': 'no-cors',
                'content-type': 'application/json',
            },
            body: JSON.stringify({
                email: email,
                password: password
              })
        }).then(res => res.json()).catch(err =>console.log(err))
        if (response.message){
            throw Error(response.message)
        } else {
            console.log(response)
            return response
        }
    }
}

