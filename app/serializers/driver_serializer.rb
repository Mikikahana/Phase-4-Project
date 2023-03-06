class DriverSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :pfpURL, :vehicle_type
end
