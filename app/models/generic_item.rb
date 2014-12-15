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

class GenericItem < ActiveRecord::Base
  belongs_to :parent, :class_name => "GenericItem", :foreign_key => "parent_item_id"
  has_many :child_items, :class_name => "GenericItem", :foreign_key => "parent_item_id"
  has_many :page_item_relationships
  has_many :pages, :through => :page_item_relationships
end
