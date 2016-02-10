class AddIconToGenericItem < ActiveRecord::Migration
  def change
    add_column :generic_items, :icon, :string, null: "", default: ""
    add_column :generic_items, :icon_color, :string, null: "", default: ""
  end
end
