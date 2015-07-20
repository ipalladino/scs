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

  def translate_component_image(id)
    if(id == 1)
      return "/assets/sections/section-hero.png"
    elsif(id == 2)
      return "/assets/sections/section-hero_2.png"
    elsif(id == 3)
      return "/assets/sections/section-four_icons_rows.png"
    elsif(id == 4)
      return "/assets/sections/section-default_left.png"
    elsif(id == 5)
      return "/assets/sections/section-default_bottom.png"
    elsif(id == 6)
      return "/assets/sections/section-three_cards.png"
    elsif(id == 7)
      return "/assets/sections/section-carousel.png"
    elsif(id == 8)
      return "/assets/sections/section-big_cover.png"
    elsif(id == 9)
      return "/assets/sections/section-four_icons_inline.png"
    else
      return "Unknown"
    end
  end
end
