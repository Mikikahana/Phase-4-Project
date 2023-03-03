# README

# Phase 4 Project

# Project Description
This app allows users to order food from their favorite restaurants to have delivered to their home!

# github repo
https://github.com/Mikikahana/Phase-4-Project

# Models
A user has many orders and has many restaurants through orders

A driver has many orders and has many restaurants through orders

An order (join table) belongs to a user, a restaurant, and a driver

A restaurant has many orders, has many users through orders, and has many menu items

A menu item belongs to a restaurant

# ERD Diagram
![Phase 4 Project - ERD v2](https://user-images.githubusercontent.com/118000976/222809822-e8439a3a-6fd3-4a92-8380-2699ddf01394.png)


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
![Screen Shot 2023-03-03 at 2 26 43 PM](https://user-images.githubusercontent.com/118000976/222809167-2f574d8a-7157-4958-89b5-baa6d5849904.png)

# REACT Components
<img width="724" alt="Screen Shot 2023-03-03 at 12 30 51 PM" src="https://user-images.githubusercontent.com/118000976/222808932-8cca4bec-10cd-4dba-859a-aa28d4982fdf.png">

# Wireframe
[Phase 4 Project - WireFrame.pdf](https://github.com/Mikikahana/Phase-4-Project/files/10885538/Phase.4.Project.-.WireFrame.pdf)




# Stretch Goals
1. “Completed” order status (MVP order statuses are pending, accepted, rejected)

2. User can add a review for a restaurant or a driver

4. Display average rating for a restaurant and a driver

# Kanban Board
https://trello.com/b/BvxjB4em/phase-4-project



