class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.references :menu, index: true
      t.string :name
      t.text :description
      t.string :image
      t.decimal :price

      t.timestamps
    end
  end
end
