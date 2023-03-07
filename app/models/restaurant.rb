class Restaurant < ApplicationRecord
    has_many :orders
    has_many :customers, through: :orders
    has_many :drivers, through: :orders
    has_many :menus, dependent: :destroy
end
