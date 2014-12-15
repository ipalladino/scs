module GenericItemsHelper
  def translate_component(id)
    if(id == 1)
      return "Hero"
    elsif(id == 2)
      return "Hero2"
    elsif(id == 3)
      return "Four Icons"
    elsif(id == 4)
      return "Default Image Left"
    elsif(id == 5)
      return "Default Image Bottom"
    elsif(id == 6)
      return "Three Cards"
    elsif(id == 7)
      return "Carousel"
    elsif(id == 8)
      return "Big Cover"
    elsif(id == 9)
      return "Four Icons Inline"
    else
      return "Unknown"
    end
  end
end
