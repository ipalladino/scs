# == Schema Information
#
# Table name: section_heros
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class SectionHero < ActiveRecord::Base
  attr_accessor :h1, :p, :img
end
