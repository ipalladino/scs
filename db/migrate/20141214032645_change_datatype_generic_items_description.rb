class ChangeDatatypeGenericItemsDescription < ActiveRecord::Migration
  def change
    change_column :generic_items, :description, :text
  end
end
