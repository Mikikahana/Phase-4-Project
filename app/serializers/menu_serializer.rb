class MenuSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :item_price, :item_image
  has_one :restaurant
end
