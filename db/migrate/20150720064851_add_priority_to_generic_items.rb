class AddPriorityToGenericItems < ActiveRecord::Migration
  def change
    add_column :generic_items, :priority, :integer, null: 0, default: 0
  end
end
