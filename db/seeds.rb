# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Template.create(
  body_background_color: "#fff",
  body_font_color: "#000",
  header_background_color: "#000",
  header_font_color: "#fff",
  header_open_background_color: "#fff",
  header_open_font_color: "#000",
  dropdown_menu_hover_background_color: "light-blue",
  dropdown_menu_hover_font_color: "#000",
  dropdown_menu_font_color: "#000",
  header_logo: "",
  footer_logo: "",
  footer_top_background_gradient: "#000",
  footer_bottom_background_gradient: "#000",
  footer_header_color: "#FFF",
  footer_link_color: "#FFF",
  footer_font_color: "#FFF",
  active: true
)

#create hero item
GenericItem.create(
  title: "Hero 1",
  description: "Example Item Hero",
  graphic: "/assets/wallpaper1.jpg",
  button_link: "none",
  button_text: "none",
  component: 1,
  is_default: true,
  priority: 0,
  background_color: "#aaaaee",
  color: "#000000"
)

#create Hero 2
GenericItem.create(
  title: "Hero 2",
  description: "Example Item Hero",
  graphic: "/assets/wallpaper1.jpg",
  button_link: "#",
  button_text: "Button",
  component: 2,
  is_default: true,
  priority: 0,
  background_color: "#aaaaee",
  color: "#000000"
)

#create Four Icons Item
v = GenericItem.create(
  title: "Four Icons Example",
  description: "Four Icons Example",
  graphic: "/assets/wallpaper1.jpg",
  button_link: "#",
  button_text: "Button",
  component: 3,
  is_default: true,
  priority: 0,
  background_color: "#aaaaee",
  color: "#000000"
)

GenericItem.create(title: "Title", description: "Some Description", graphic: "glyphicon glyphicon-asterisk", button_link: "#", button_text: "Text", component: nil, parent_item_id: v.id, is_default: false, priority: 0, background_color: "transparent", color: "#000");
GenericItem.create(title: "Title", description: "Some Description", graphic: "glyphicon glyphicon-asterisk", button_link: "#", button_text: "Text", component: nil, parent_item_id: v.id, is_default: false, priority: 0, background_color: "transparent", color: "#000");
GenericItem.create(title: "Title", description: "Some Description", graphic: "glyphicon glyphicon-asterisk", button_link: "#", button_text: "Text", component: nil, parent_item_id: v.id, is_default: false, priority: 0, background_color: "transparent", color: "#000");
GenericItem.create(title: "Title", description: "Some Description", graphic: "glyphicon glyphicon-asterisk", button_link: "#", button_text: "Text", component: nil, parent_item_id: v.id, is_default: false, priority: 0, background_color: "transparent", color: "#000");

#create Default image left item
GenericItem.create(
  title: "Default Image Left",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
  graphic: "/assets/carousel-intro-5.png",
  button_link: "#",
  button_text: "Button",
  component: 4,
  is_default: true,
  priority: 0,
  background_color: "#000",
  color: "#fff"
)

#create Default image bottom item
GenericItem.create(
  title: "Default Image Bottom",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
  graphic: "/assets/carousel-intro-1.png",
  button_link: "#",
  button_text: "Button",
  component: 5,
  is_default: true,
  priority: 0,
  background_color: "#000",
  color: "#fff"
)

#create Three Cards
v = GenericItem.create(
  title: "Three Cards",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
  graphic: "/assets/carousel-intro-1.png",
  button_link: "#",
  button_text: "Button",
  component: 6,
  is_default: true,
  priority: 0,
  background_color: "#000",
  color: "#fff"
)

#create Three Cards SubItems
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "/assets/client-stitcher.png", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "/assets/client-stitcher.png", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "/assets/client-stitcher.png", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")

v = GenericItem.create(
  title: "Carousel",
  component: 7,
  is_default: true,
  priority: 0,
  background_color: "#000",
  color: "#fff"
)

#create Carousel SubItems
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "/assets/carousel-intro-1.png", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "/assets/carousel-intro-2.png", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "/assets/carousel-intro-3.png", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")


#create Big Cover
GenericItem.create(
  title: "Big Cover",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
  graphic: "/assets/wallpaper_ourvision.jpg",
  button_link: "#",
  button_text: "Button",
  component: 8,
  is_default: true,
  priority: 0,
  background_color: "#000",
  color: "#fff"
)

#create Four Icons Inline item
v = GenericItem.create(
  title: "Four Icons Inline",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
  button_link: "#",
  button_text: "Button",
  component: 9,
  is_default: true,
  priority: 0,
  background_color: "#000",
  color: "#fff"
)

#create Four Icons Inline SubItems
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "glyphicon glyphicon-asterisk", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "glyphicon glyphicon-asterisk", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "glyphicon glyphicon-asterisk", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")
GenericItem.create(parent_item_id: v.id, title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipisicin...", graphic: "glyphicon glyphicon-asterisk", button_link: "#", button_text: "Button", is_default: false, priority: 0, background_color: "transparent", color: "#000")

#create attachment fixed
GenericItem.create(
  title: "Full Width Fixed Attachment",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
  graphic: "/assets/wallpaper_ourvision.jpg",
  button_link: "#",
  button_text: "Button",
  component: 10,
  is_default: true,
  priority: 0,
  background_color: "#000",
  color: "#fff"
)
