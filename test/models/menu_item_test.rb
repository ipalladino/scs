# == Schema Information
#
# Table name: menu_items
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  description    :text
#  url            :string(255)
#  parent_item_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#  priority       :integer
#

require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
