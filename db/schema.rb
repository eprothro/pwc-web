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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150512191251) do

  create_table "albums", :force => true do |t|
    t.string   "cover_asset"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "email"
    t.integer  "extension"
    t.date     "started_on"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "preferred_name"
    t.string   "image_url"
    t.string   "suffix"
    t.string   "subtitle"
    t.string   "slug"
  end

  create_table "employees_services", :id => false, :force => true do |t|
    t.integer "employee_id"
    t.integer "service_id"
  end

  create_table "events", :force => true do |t|
    t.string   "cover_asset"
    t.integer  "album_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "asset"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "caption"
  end

  create_table "service_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.integer  "service_group_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "slug"
  end

end
