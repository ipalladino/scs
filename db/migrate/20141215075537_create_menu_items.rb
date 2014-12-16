class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :parent_item_id

      t.timestamps
    end
  end
end
