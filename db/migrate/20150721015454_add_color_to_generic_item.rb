class AddColorToGenericItem < ActiveRecord::Migration
  def change
    add_column :generic_items, :background_color, :string, null: "transparent", default: "transparent"
    add_column :generic_items, :color, :string, null: "#000", default: "#000"
  end
end
