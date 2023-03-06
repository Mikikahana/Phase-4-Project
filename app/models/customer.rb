class Customer < ApplicationRecord
    has_many :orders
    has_many :restaurants, through: :orders
end
