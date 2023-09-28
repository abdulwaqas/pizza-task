class AddPizzaToItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :pizza, index: true
  end
end
