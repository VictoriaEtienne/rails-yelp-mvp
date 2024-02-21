class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.integer :category, default: 0

      t.timestamps
    end
    add_index :restaurants, :category
  end
end
