class Page < ActiveRecord::Base
  has_many :page_item_relationships
  has_many :generic_items, :through => :page_item_relationships
end