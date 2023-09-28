class Order < ApplicationRecord
    has_many :orders_items
    has_many :items, through: :orders_items



    def get_total_price
        total_price = 0
        items = self.items

        items.each do |item|
           total_price = total_price +item.pizza.price
        end

        if self.discount_code
            discount_per = self.discount_code.scan(/\d+/)
            total_price = total_price - ( (total_price / 100)* discount_per.first.to_i)
        end

        total_price
    end
end
