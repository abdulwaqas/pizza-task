class CreateJoinTableOrderItem < ActiveRecord::Migration[7.0]
  def change
    create_table :orders_items, id: false do |t|
      t.belongs_to :order
      t.belongs_to :item
    end
  end
end
