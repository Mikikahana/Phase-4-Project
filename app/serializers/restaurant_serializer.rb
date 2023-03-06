class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :pfpURL, :address, :restaurant_manager
end
