class AddComponentToGenericItems < ActiveRecord::Migration
  def change
    add_column :generic_items, :component, :integer
    add_column :generic_items, :parent_item_id, :integer
  end
end
