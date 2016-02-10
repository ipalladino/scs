# == Schema Information
#
# Table name: page_menu_relationships
#
#  id           :integer          not null, primary key
#  page_id      :integer
#  menu_item_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class PageMenuRelationship < ActiveRecord::Base
  belongs_to :page
  belongs_to :menu_item
  validates :menu_item_id, uniqueness: true
end
