class CreateSectionHeros < ActiveRecord::Migration
  def change
    create_table :section_heros do |t|

      t.timestamps
    end
  end
end
