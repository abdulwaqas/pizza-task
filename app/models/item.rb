class Item < ApplicationRecord
    has_many :orders_items
    has_many :orders, through: :orders_items
    
    belongs_to :pizza 

end
