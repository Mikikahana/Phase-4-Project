class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :pfp_url
end
