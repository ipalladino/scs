class AddPageItemRelationshipTable < ActiveRecord::Migration
  def change
    create_table :page_item_relationships do |t|
      t.integer :page_id
      t.integer :generic_item_id
      t.timestamps
    end
  end
end
