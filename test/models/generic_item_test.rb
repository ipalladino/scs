# == Schema Information
#
# Table name: generic_items
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  description      :text
#  graphic          :string(255)
#  button_link      :string(255)
#  button_text      :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  component        :integer
#  parent_item_id   :integer
#  is_default       :boolean          default(FALSE), not null
#  priority         :integer          default(0)
#  background_color :string(255)      default("transparent")
#  color            :string(255)      default("#000")
#  icon             :string(255)      default("")
#  icon_color       :string(255)      default("")
#

require 'test_helper'

class GenericItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
