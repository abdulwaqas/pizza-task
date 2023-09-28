class AddColoumnsToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :name, :string
    add_column :items, :size, :string
    add_column :items, :removes, :string, array: true
    add_column :items, :adds, :string, array: true
    add_column :items, :base_price, :decimal

  end
end
