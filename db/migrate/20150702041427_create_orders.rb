class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :menu_item, index: true
      t.references :restaurant, index: true
      t.string :street_address
      t.string :street_address_2
      t.string :street_address_2
      t.string :city
      t.string :state
      t.references :user, index: true

      t.timestamps
    end
  end
end
