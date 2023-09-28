class CreateJoinTablePizzaItem < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas_items, id: false do |t|
      t.belongs_to :pizza
      t.belongs_to :item
    end
  end
end
