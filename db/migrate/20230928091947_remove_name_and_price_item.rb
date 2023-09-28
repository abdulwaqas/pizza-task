class RemoveNameAndPriceItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :name
    remove_column :items, :base_price
  end
end
