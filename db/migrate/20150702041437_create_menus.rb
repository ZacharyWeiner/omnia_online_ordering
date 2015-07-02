class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.references :restaurant, index: true
      t.string :image

      t.timestamps
    end
  end
end
