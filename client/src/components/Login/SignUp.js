import React from 'react'

export default function SignUp() {


    function handleSignUp(){
        fetch("/signup", {
            method: "POST",
            headers:{
                'Content-Type':'application/json'
            },
            body: JSON.stringify()
        })
        .then(r => r.json())
        // .then(console.log)
    }

    return (
        <div className='form'>

    <form className='hundred' >
        <label>First Name:</label>
        <input type="text" name="first name" placeholder="First Name"></input>
        <label>Last Name:</label>
        <input type="text" name="last name" placeholder="Last name"></input>
        <label>Email:</label>
        <input type="text" name="email" placeholder="Email"></input>
        <button onClick={handleSignUp}>Sign Up</button>
    </form>
    </div>
    )
}
