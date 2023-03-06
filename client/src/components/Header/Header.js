import React from 'react'
import OrderHistory from './OrderHistory'
import Profile from './Profile'
import Logout from './Logout'

function Header() {
    return (
    <div>
        <OrderHistory />
        <Profile />
        <Logout />
    </div>
    )
}

export default Header