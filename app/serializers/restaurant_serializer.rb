class RestaurantSerializer < ActiveModel::Serializer

  attributes :id, :name, :address, :restaurant_manager, :email, :password, :pfp_url

end
