class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :templates, :footer_bottom_background_gradiebt, :footer_bottom_background_gradient
  end
end
