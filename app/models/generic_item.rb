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

  def generate_default(component)
    if(self.title == nil)
      self.title = translate_component(self.component)
    end
    if(self.description == nil)
      self.description = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex."
    end
  end

  def self.available_fields(component, ischild=nil)
    if(!ischild)
      if(component == "1") #hero
        available_fields = {
          title: true,
          description: true,
          graphic: true,
          button_link: false,
          button_text: false,
          subitems: 0
        }
      elsif(component == "2") #hero2
        available_fields = {
          title: true,
          description: true,
          graphic: true,
          button_link: false,
          button_text: false,
          subitems: 0
        }
      elsif(component == "3") #four icons
        available_fields = {
          title: true,
          description: true,
          graphic: false,
          button_link: false,
          button_text: false,
          subitems: 4
        }
      elsif(component == "4" || component == "5") #default left, default bottom
        available_fields = {
          title: true,
          description: true,
          graphic: true,
          button_link: true,
          button_text: true,
          subitems: 0
        }
      elsif(component == "6") #three cards
        available_fields = {
          title: true,
          description: true,
          graphic: false,
          button_link: false,
          button_text: false,
          subitems: 3
        }
      elsif(component == "7") #carousel
        available_fields = {
          title: false,
          description: false,
          graphic: false,
          button_link: false,
          button_text: false,
          subitems: -1
        }
      elsif(component == "8") #big cover
        available_fields = {
          title: true,
          description: false,
          graphic: true,
          button_link: false,
          button_text: false,
          subitems: 0
        }
      elsif(component == "9") #four icons inline
        available_fields = {
          title: false,
          description: false,
          graphic: false,
          button_link: false,
          button_text: false,
          subitems: 4
        }
      end
    else
      if(component == "3") #four icons
        available_fields = {
          title: false,
          description: true,
          graphic: true,
          button_link: false,
          button_text: false,
          subitems: 0
        }
      elsif(component == "6") #three cards
        available_fields = {
          title: true,
          description: true,
          graphic: true,
          button_link: true,
          button_text: true,
          subitems: 3
        }
      elsif(component == "7") #carousel
        available_fields = {
          title: true,
          description: true,
          graphic: true,
          button_link: true,
          button_text: true,
          subitems: -1
        }
      elsif(component == "9") #four icons inline
        available_fields = {
          title: true,
          description: true,
          graphic: true,
          button_link: true,
          button_text: true,
          subitems: 4
        }
      end
    end

    return available_fields
  end
end
