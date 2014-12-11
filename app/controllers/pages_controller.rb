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
      p: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
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
      "Communicate, Reach, Increase your Revenue",
      "",
      "/assets/background-revenue.jpeg",
    )
      
    @section_fouricons = {
      title: "Concilliate Design and Engineering",
      p: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
      items: [
        SectionFouriconsItem.new("fa fa-laptop", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."),
        SectionFouriconsItem.new("fa fa-bar-chart", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."),
        SectionFouriconsItem.new("fa fa-credit-card", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."),
        SectionFouriconsItem.new("fa fa-institution", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.")
      ]
    }
  end
end
