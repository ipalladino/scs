# == Schema Information
#
# Table name: page_item_relationships
#
#  id              :integer          not null, primary key
#  page_id         :integer
#  generic_item_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

# app/models/categorization.rb
class PageItemRelationship < ActiveRecord::Base
  belongs_to :page
  belongs_to :generic_item
end
