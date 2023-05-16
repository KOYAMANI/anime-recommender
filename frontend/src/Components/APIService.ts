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
        }).then(res => res.json()).catch(err =>console.log(err))
        if (response.message){
            throw Error(response.message)
        } else {
            console.log(response)
            return response
        }
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
        }).then(res => res.json()).catch(err =>console.log(err))
        if (response.message){
            throw Error(response.message)
        } else {
            console.log(response)
            return response
        }
    }
}

