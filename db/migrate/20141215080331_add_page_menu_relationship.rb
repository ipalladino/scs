class AddPageMenuRelationship < ActiveRecord::Migration
  def change
    create_table :page_menu_relationships do |t|
      t.integer :page_id
      t.integer :menu_item_id
      t.timestamps
    end
  end
end
