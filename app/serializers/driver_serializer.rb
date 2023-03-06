class DriverSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :pfp_url, :vehicle_type
end
