class PageMenuRelationship < ActiveRecord::Base
  belongs_to :page
  belongs_to :menu_item
  validates :menu_item_id, uniqueness: true
end