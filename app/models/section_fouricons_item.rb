class SectionFouriconsItem
  attr_reader :icon, :p, :button_link, :button_text
  
  def initialize(icon, p, button_link="", button_text="")
    @icon =         icon
    @p =            p
    @button_link =  button_link
    @button_text =  button_text
  end
  
end
