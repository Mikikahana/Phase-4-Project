class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :pfpURL
end
