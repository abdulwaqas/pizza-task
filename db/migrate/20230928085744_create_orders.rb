class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :uuid
      t.string :promotion_code
      t.string :discount_code
      t.boolean :is_completed

      t.timestamps
    end
  end
end
