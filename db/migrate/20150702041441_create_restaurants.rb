class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone_number
      t.text :description
      t.string :logo
      t.string :image

      t.timestamps
    end
  end
end
