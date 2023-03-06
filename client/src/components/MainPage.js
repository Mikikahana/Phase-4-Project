import React from 'react'
import Header from './Header/Header'
import UserHomePage from './UserHomePage/UserHomePage'
import DriverHomePage from './DriverHomePage/DriverHomePage'
import RestaurantHomePage from './RestaurantHomePage/RestaurantHomePage'

function MainPage() {
    return (
    <div>
        <Header/>
        <UserHomePage/>
        <DriverHomePage />
        <RestaurantHomePage />
    </div>
    )}

export default MainPage