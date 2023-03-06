class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_total, :delivery_fee, :delivery_address, :order_status
end
