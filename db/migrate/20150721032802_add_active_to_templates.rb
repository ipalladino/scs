class AddActiveToTemplates < ActiveRecord::Migration
  def change
    add_column :templates, :active, :boolean, null: false, default: false
  end
end
