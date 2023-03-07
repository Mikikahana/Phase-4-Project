class Customer < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :restaurants, through: :orders
end
