class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_total, :delivery_fee, :delivery_address, :order_status
  has_one :restaurant
  has_one :customer
  has_one :driver
end
