# == Schema Information
#
# Table name: pages
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  url         :string(255)
#

class Page < ActiveRecord::Base
  has_many :page_item_relationships
  has_many :generic_items, :through => :page_item_relationships
  
  has_many :page_menu_relationships
  has_many :menu_items, :through => :page_menu_relationships
  
  validates :url, uniqueness: true
end
