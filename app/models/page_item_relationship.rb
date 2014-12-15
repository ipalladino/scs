# app/models/categorization.rb
class PageItemRelationship < ActiveRecord::Base
  belongs_to :page
  belongs_to :generic_item
end