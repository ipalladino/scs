class StaticPagesController < ApplicationController
  def home
    begin
      @page = Page.where({url: request.path})[0]
      render template: "pages/preview"
      return
    rescue
      redirect_to "/404.html"
      return
    end
  end

  def portfolio
    @section_hero = GenericItem.new(
      title: "PORTFOLIO",
      description: "Get to know some of our customers and our work.",
      graphic: "https://s3-us-west-2.amazonaws.com/simple-custom-solutions/heros/hero-portfolio.jpeg"
    )
  end

  def contact_us
    @section_hero = GenericItem.new(
      title: "CONTACT US",
      description: "Before anything, let’s start talking.",
      graphic: "https://s3-us-west-2.amazonaws.com/simple-custom-solutions/heros/hero-contact-us.jpeg"
    )
  end

  def send_contact
    message = params['message']
    
    ContactMailer.contact_email(message).deliver

    redirect_to "/thank_you"
  end

  #design possibility
  def bookmarkers
  end

  #design possibility
  def horizontals
    @section_hero = GenericItem.new(
      title: "SERVICES",
      description: "We will go above and beyond to convey emotion, and tell a beautiful story about your product.<br> Contact us and learn more about how we can help you",
      graphic: "/assets/wallpaper2.jpg"
    )
  end

  def default
    begin
      @page = Page.where({url: "/"})[0]
      render template: "pages/preview"
      return
    rescue
      redirect_to "/404.html"
      return
    end
  end

  def indexi
    # section 1

    @section_hero = GenericItem.new(
      title: "INSPIRE, INNOVATE, CREATE",
      description: "We will go above and beyond to convey emotion, and tell a beautiful story about your product",
      graphic: "/assets/wallpaper2.jpg"
    )

    # section 2
    @section_whyscs = GenericItem.new(
      title: "Why Simple Custom Solutions?",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
      graphic: "/assets/whyscs.jpg")

    # section 3
    @section_fouricons = GenericItem.find(3)

    @section_default_imgleft = GenericItem.find(9)

    @section_default_imgbottom = GenericItem.find(10)

    @section_three_cards = GenericItem.find(11)

    @section_carousel_intro = GenericItem.find(15)

    @section_cover = GenericItem.find(21)

    @section_four_inline = GenericItem.find(26)

  end

  def ourvision
    @section_hero = SectionHero.new(
      h1: "OUR VISION, IMAGINE AND CREATE",
      p: "We will go above and beyond to convey emotion, and tell a beautiful story about your product",
      img: "/assets/wallpaper_ourvision.jpg"
    )

    @section_cover = SectionDefault.new(
      "Expand to new horizons, reach further and beyond.",
      "",
      "/assets/background-earth.jpg",
    )

    @section_default_imgleft = SectionDefault.new(
      "Numbers Never Lie",
      "Be ahead of your time, think big and don't be afraid of looking at the results. In the era of information, we can track progress every step we take, and make our decisions based on real impact instead of wild guesses",
      "/assets/image-side-analytics.png",
      "#",
      "Learn More"
    )

    @section_fouricons = {
      title: "Concilliate Design and Engineering, Improve",
      p: "Our goal is to disrupt the market with a better, unique and customized experience for each one of our customers.</p><p>Instead of building a streamlined process that will force everyone into the same framework and become rigid, we want to create a pool of resources, ready to tailor to our customers need, and flexible enough to adapt as the project matures without causing any losses, either of time or money.</p><p>We strive to combine the cutting edge of engineering, innovation and design. At SimepleCustomSolutions we believe that any thought or idea can materialize with the right guidance. We empower our customers by continuing to research into better, faster, and ever more efficient engineering techniques while challenging the results with highly accurate analytics.</p>",
      items: [
        SectionFouriconsItem.new("fa fa-bolt", "Disrupt by being better, provide a unique and customized experience for each customer. Look forward, imagine and innovate."),
        SectionFouriconsItem.new("fa fa-cogs", "Create a pool of resources, ready to tailer to our customers need, flexible enough to adapt as the project matures and evolves."),
        SectionFouriconsItem.new("fa fa-money", "Be efficient, keep the costs at minimum while maintaining the highest industry standards, without compromising in any ends"),
        SectionFouriconsItem.new("fa fa-bar-chart", "Challenge our results with highly accurate analytics and A/B testing. Look at the infalible information and react to it.")
      ]
    }
  end
end
