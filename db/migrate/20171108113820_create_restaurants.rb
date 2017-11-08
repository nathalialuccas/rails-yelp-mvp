class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :reviews
      t.text :address
      t.string :category
      t.integer :phone

      t.timestamps
    end
  end
end
