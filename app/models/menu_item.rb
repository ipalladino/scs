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

class MenuItem < ActiveRecord::Base
  belongs_to :parent, :class_name => "MenuItem", :foreign_key => "parent_item_id"
  has_many :child_items, :class_name => "MenuItem", :foreign_key => "parent_item_id"
  has_many :page_menu_relationships
  has_many :pages, :through => :page_menu_relationships
end
