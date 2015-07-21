json.array!(@templates) do |template|
  json.extract! template, :id, :body_background_color, :body_font_color, :header_background_color, :header_font_color, :header_open_background_color, :header_open_font_color, :dropdown_menu_hover_background_color, :dropdown_menu_hover_font_color, :dropdown_menu_font_color, :header_logo, :footer_logo, :footer_top_background_gradient, :footer_bottom_background_gradient, :footer_header_color, :footer_link_color, :footer_font_color
  json.url template_url(template, format: :json)
end
