import React, { useState } from 'react'
import { useHistory } from 'react-router-dom'

function LoginForm({setUser}){
    const [formData, /*setFormData*/] = useState({username: "", password: ""})
    const [feedback, setFeedback] = useState("")

    const history = useHistory()

    function handleSubmit(e){
        e.preventDefault()
        fetch("/login", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(formData)
        })
        .then(r => r.json())
        .then(d =>{
            if (d.error){setFeedback(d.error)
            } else {
                setFeedback("")
                console.log("log in success")
                setUser(d.id)
                history.push('/')
            }
        })
    }

    return <div className='form'>

    <form className='hundred' onSubmit={handleSubmit}>
        <label>Username:</label>
        <input type="text" name="username" value={formData.username} placeholder="Username"></input>
        <label>Password:</label>
        <input type="text" name="password" value={formData.password} placeholder="Password"></input>
        <button type="submit" > Log In</button>
        <p>{feedback}</p>
    </form>
    </div>
}

export default LoginForm