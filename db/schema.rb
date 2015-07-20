# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150720064851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "generic_items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "graphic"
    t.string   "button_link"
    t.string   "button_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "component"
    t.integer  "parent_item_id"
    t.boolean  "is_default",     default: false, null: false
    t.integer  "priority",       default: 0
  end

  create_table "menu_items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.integer  "parent_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "priority"
  end

  create_table "page_item_relationships", force: true do |t|
    t.integer  "page_id"
    t.integer  "generic_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_menu_relationships", force: true do |t|
    t.integer  "page_id"
    t.integer  "menu_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "section_heros", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
