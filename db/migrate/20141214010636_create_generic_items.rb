class CreateGenericItems < ActiveRecord::Migration
  def change
    create_table :generic_items do |t|
      t.string :title
      t.string :description
      t.string :graphic
      t.string :button_link
      t.string :button_text

      t.timestamps
    end
  end
end
