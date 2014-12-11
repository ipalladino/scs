class SectionDefault
  attr_accessor :h1, :p, :img, :button_link, :button_text
  
  def initialize(h1, p, img, button_link="", button_text="")
    @h1 =           h1
    @p =            p
    @img =          img
    @button_link =  button_link
    @button_text =  button_text
  end
  
end
