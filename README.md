# README

# Phase 4 Project

# Project Description
This app allows users to order food from their favorite restaurants to have delivered to their home!

# github repo
https://github.com/Mikikahana/Phase-4-Project

# Models
1. A user has many orders and has many restaurants through orders
3. An order (join table) belongs to a user and a restaurant
4. A restaurant has many orders, has many users through orders, and has many menu items
5. A menu item belongs to a restaurant

# ERD Diagram
![Phase 4 Project - ERD v2](https://user-images.githubusercontent.com/118000976/222811914-d12c14ee-78ee-4813-8782-cea173620463.png)


# Validations
Users:

validates_uniqueness_of :email

validates_format_of :email, with: VALID_EMAIL_REGEX

validates :name, presence: true, length: { in: 3..40 }


Orders:

validates :order_amount, presence: true, numericality: { greater_than_or_equal_to: 10.0 }

// dependent on whether we want status as MVP or stretch goal
validates :status, presence: true


Restaurants:

validates :name, presence: true, length: { in:3..70 }

validates :address, presence: true,  length: { in:3..90 }, allow_blank: false


Menu Items:

validates :name, :price, presence:true

# Controllers
![Screen Shot 2023-03-03 at 3 38 25 PM](https://user-images.githubusercontent.com/118000976/222824536-71160ffb-585b-4a1a-abcf-b83b54e5df26.png)



# Serializer Example
![Screen Shot 2023-03-03 at 3 22 11 PM](https://user-images.githubusercontent.com/118000976/222821357-cdd43a78-e719-4fd0-92c6-27404d1bfb6f.png)



# REACT Components
<img width="724" alt="Screen Shot 2023-03-03 at 12 30 51 PM" src="https://user-images.githubusercontent.com/118000976/222808932-8cca4bec-10cd-4dba-859a-aa28d4982fdf.png">

# Wireframe
[Phase 4 Project - WireFrame.pdf](https://github.com/Mikikahana/Phase-4-Project/files/10885538/Phase.4.Project.-.WireFrame.pdf)


# User Stories

All Users:
1. All user types can create an account
2. All user types can can sign into their account
3. All user types can edit or delete their profiles

Consumers: 
1. User type CONSUMER can view a list of all restaurants
2. User type CONSUMER can add menu items to a cart from a specific restaurant
3. User type CONSUMER can remove menu items from a cart
4. user type CONSUMER can create an order
5. user type CONSUMER will see different messages on the created order depending on the order status
6. user type CONSUMER can view order history

Restaurants:
1. User type RESTAURANT can view a list of pending and active orders
2. User type RESTAURANT can accept or reject an order
3. User type RESTAURANT can view order history

Drivers:
1. User type DRIVER can view a list of pending and active orders
2. User type DRIVER can accept or reject an order
3. User type DRIVER can view order history

# Stretch Goals
1. “Completed” order status (MVP order statuses are pending, accepted, rejected)

2. User can add a review for a restaurant or a driver

4. Display average rating for a restaurant and a driver

# Kanban Board
https://trello.com/b/BvxjB4em/phase-4-project



