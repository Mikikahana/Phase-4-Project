require 'faker'

puts "💣 clearing the database..."
Customer.destroy_all
Driver.destroy_all
Restaurant.destroy_all
Order.destroy_all

Menu.destroy_all

puts "👤 seeding customers..."
Customer.create!([
    {
        name: "Tom Anderson",
        email: "myspacetom@example.com",
        password: "abc123",
        pfp_url: "https://i.insider.com/4efd9b8b69bedd682c000022?width=750&format=jpeg&auto=webp"

    },
    {
        name: "Mark Zuckerberg",
        email: "markymark@example.com",
        password: "abc123",
        pfp_url: "https://dailytimes.com.pk/assets/uploads/2023/03/03/c71325b82a942b24cdbdebc121679fc1.jpg"

    },
    {
        name: "Tim Cook",
        email: "timmyc@example.com",
        password: "abc123",
        pfp_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ45JyYVq4BYhtQBGMVX_Iae-BbuLrpA9If0oG8KAzrKl_zouRT"

    },
    {
        name: "Jeff Bezos",
        email: "jbezos@example.com",
        password: "abc123",

        pfp_url: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"

    }
])

puts "🚗 seeding drivers..."
5.times do
Driver.create!([
    {
        name: Faker::Name.name,
        email: Faker::Internet.safe_email,
        password: "abc123",
        pfp_url: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
        vehicle_type: Faker::Vehicle.make_and_model
    }
])
end

puts "🍕 seeding restaurants..."
5.times do 
    Restaurant.create!([
    {
        name: Faker::Restaurant.name,
        email: Faker::Internet.safe_email,
        password: "abc123",

        pfp_url: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",


        address: Faker::Address.full_address,
        restaurant_manager: Faker::TvShows::Seinfeld.character
    }
])
end

puts "🛍 seeding orders..."
2.times do
    Order.create!([
        {
            order_total: 14.99,
            delivery_fee: 3.99,
            delivery_address: Faker::Address.full_address,
            restaurant_id: Restaurant.all.sample.id,
            customer_id: Customer.all.sample.id,
            driver_id: Driver.all.sample.id,
            order_status: "Confirmed"
        }
    ])
end

2.times do
    Order.create!([
        {
            order_total: 14.99,
            delivery_fee: 3.99,
            delivery_address: Faker::Address.full_address,
            restaurant_id: Restaurant.all.sample.id,
            customer_id: Customer.all.sample.id,
            driver_id: Driver.all.sample.id,
            order_status: "Pending"
        }
    ])
end

2.times do 
    Order.create!([
        {
            order_total: 14.99,
            delivery_fee: 3.99,
            delivery_address: Faker::Address.full_address,
            restaurant_id: Restaurant.all.sample.id,
            customer_id: Customer.all.sample.id,
            driver_id: Driver.all.sample.id,
            order_status: "Rejected"
        }
    ])
end

puts "🧀 seeding menu items..."

    Menu.create!([

        {
            item_name: "Cheeseburger",
            item_price: "13.00",
            item_image: "https://s23209.pcdn.co/wp-content/uploads/2022/07/220602_DD_The-Best-Ever-Cheeseburger_267.jpg",
            restaurant_id: Restaurant.all.sample.id,
            order_id: Order.all.sample.id
        },
        {
            item_name: "BLT",
            item_price: "11.99",
            item_image: "https://therecipecritic.com/wp-content/uploads/2022/05/blt-1.jpg",
            restaurant_id: Restaurant.all.sample.id
        },
        {
            item_name: "Ramen",
            item_price: "16.99",
            item_image: "https://therecipecritic.com/wp-content/uploads/2022/05/blt-1.jpg",
            restaurant_id: Restaurant.all.sample.id
        },
        {
            item_name: "Tacos",
            item_price: "18.99",
            item_image: "https://therecipecritic.com/wp-content/uploads/2022/05/blt-1.jpg",
            restaurant_id: Restaurant.all.sample.id
        },
        {
            item_name: "Spaghetti",
            item_price: "12.99",
            item_image: "https://therecipecritic.com/wp-content/uploads/2022/05/blt-1.jpg",
            restaurant_id: Restaurant.all.sample.id,
            order_id: Order.all.sample.id
        }
    ])


puts "seeding complete!!!"