class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :body_background_color
      t.string :body_font_color
      t.string :header_background_color
      t.string :header_font_color
      t.string :header_open_background_color
      t.string :header_open_font_color
      t.string :dropdown_menu_hover_background_color
      t.string :dropdown_menu_hover_font_color
      t.string :dropdown_menu_font_color
      t.string :header_logo
      t.string :footer_logo
      t.string :footer_top_background_gradient
      t.string :footer_bottom_background_gradiebt
      t.string :footer_header_color
      t.string :footer_link_color
      t.string :footer_font_color

      t.timestamps
    end
  end
end
