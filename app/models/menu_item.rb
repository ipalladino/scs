class MenuItem < ActiveRecord::Base
  belongs_to :parent, :class_name => "MenuItem", :foreign_key => "parent_item_id"
  has_many :child_items, :class_name => "MenuItem", :foreign_key => "parent_item_id"
  has_many :page_menu_relationships
  has_many :pages, :through => :page_menu_relationships
end
