class PagesController < ApplicationController
  def index
    @section_hero = SectionHero.new(
      h1: "INSPIRE, INNOVATE, CREATE", 
      p: "We will go above and beyond to convey emotion, and tell a beautiful story about your product", 
      img: "/assets/wallpaper2.jpg"
    )
    
    @section_whyscs = SectionHero.new(
      h1: "Why Simple Custom Solutions?", 
      p: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", 
      img: "/assets/whyscs.jpg")
      
    @section_fouricons = {
      title: "Cost & Value Matters",
      p: "Our goal is to disrupt the market with a better, unique and customized experience for each one of our customers.</p><p>Instead of building a streamlined process that will force everyone into the same framework and become rigid, we want to create a pool of resources, ready to tailor to our customers need, and flexible enough to adapt as the project matures without causing any losses, either of time or money.</p><p>We strive to combine the cutting edge of engineering, innovation and design. At SimepleCustomSolutions we any thought or idea can materialize with the right guidance. We empower our customers by continuing to research into better, faster, and ever more efficient engineering techniques while challenging the results with highly accurate analytics and results.</p>",
      items: [
        SectionFouriconsItem.new("fa fa-laptop", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."),
        SectionFouriconsItem.new("fa fa-bar-chart", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."),
        SectionFouriconsItem.new("fa fa-credit-card", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."),
        SectionFouriconsItem.new("fa fa-institution", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.")
      ]
    }
    
    @section_default_imgleft = SectionDefault.new(
      "Graphic Example",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur",
      "/assets/graphic_fpo.png",
      "#",
      "Learn More"
    )
    
    @section_default_imgbottom = SectionDefault.new(
      "Ipad Bottom Example",
      "With Ipad at the bottom Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur",
      "/assets/ipad_analytics.png",
      "#",
      "Learn More"
    )
    
    
    @section_thumbnail = {
      title: "Clients",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio. o laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru.",
      items: [
        SectionDefault.new(
          "SAMBA.TV",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "/assets/client-hotlist.png",
          "#",
          "Learn More"
        ),
        SectionDefault.new(
          "STITCHER",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "/assets/client-stitcher.png",
          "#",
          "Read More"
        ),
        SectionDefault.new(
          "SPLUNK",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "/assets/client-splunk.png",
          "#",
          "Learn More"
        )
      ]
    }
    
    @section_carousel_intro = {
      title: "Clients",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio. o laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru.",
      items: [
        SectionDefault.new(
          "UI & UX",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "/assets/carousel-intro-1.png",
          "#",
          "Learn More"
        ),
        SectionDefault.new(
          "MOBILE",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "/assets/carousel-intro-2.png",
          "#",
          "Read More"
        ),
        SectionDefault.new(
          "BIG DATA & HIGH PERFORMANCE",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "/assets/carousel-intro-3.png",
          "#",
          "Learn More"
        ),
        SectionDefault.new(
          "WEB APPLICATIONS",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "/assets/carousel-intro-4.png",
          "#",
          "Learn More"
        ),
        SectionDefault.new(
          "WEB MARKETING",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "/assets/carousel-intro-5.png",
          "#",
          "Learn More"
        )
      ]
    }
    
    @section_cover = SectionDefault.new(
      "Communicate, Reach, Increase your Revenue",
      "",
      "/assets/background-revenue.jpeg",
    )
    
    @section_four_inline = {
      title: "Four Inline",
      description: "Description",
      items: [
        SectionDefault.new(
          "Rename Lore",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "fa fa-laptop",
          "#",
          "Learn More"
        ),
        SectionDefault.new(
          "Nomern Fotrs",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "fa fa-credit-card",
          "#",
          "Read More"
        ),
        SectionDefault.new(
          "Sactirio Lerno",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "fa fa-institution",
          "#",
          "Learn More"
        ),
        SectionDefault.new(
          "Sactirio Lerno",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
          "fa fa-bar-chart",
          "#",
          "Learn More"
        )
      ]
    }
    
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
