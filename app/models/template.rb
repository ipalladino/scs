# == Schema Information
#
# Table name: templates
#
#  id                                   :integer          not null, primary key
#  body_background_color                :string(255)
#  body_font_color                      :string(255)
#  header_background_color              :string(255)
#  header_font_color                    :string(255)
#  header_open_background_color         :string(255)
#  header_open_font_color               :string(255)
#  dropdown_menu_hover_background_color :string(255)
#  dropdown_menu_hover_font_color       :string(255)
#  dropdown_menu_font_color             :string(255)
#  header_logo                          :string(255)
#  footer_logo                          :string(255)
#  footer_top_background_gradient       :string(255)
#  footer_bottom_background_gradient    :string(255)
#  footer_header_color                  :string(255)
#  footer_link_color                    :string(255)
#  footer_font_color                    :string(255)
#  created_at                           :datetime
#  updated_at                           :datetime
#  active                               :boolean          default(FALSE), not null
#

class Template < ActiveRecord::Base
end
