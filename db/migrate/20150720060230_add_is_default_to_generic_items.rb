class AddIsDefaultToGenericItems < ActiveRecord::Migration
  def change
      add_column :generic_items, :is_default, :boolean, null: false, default: false
  end
end
