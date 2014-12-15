# == Schema Information
#
# Table name: generic_items
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  description    :text
#  graphic        :string(255)
#  button_link    :string(255)
#  button_text    :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  component      :integer
#  parent_item_id :integer
#

require 'test_helper'

class GenericItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
