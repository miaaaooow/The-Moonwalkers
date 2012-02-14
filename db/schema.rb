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

ActiveRecord::Schema.define(:version => 20120214120352) do

  create_table "album_photos", :force => true do |t|
    t.string  "photo_url"
    t.text    "description"
    t.integer "album_id"
  end

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cover"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "dashboard_entries", :force => true do |t|
    t.string   "content",    :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "forum_replies", :force => true do |t|
    t.text     "text"
    t.integer  "forum_topic_id"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "forum_topics", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "got_its", :force => true do |t|
    t.integer  "user_id",            :null => false
    t.integer  "dashboard_entry_id", :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "novelties", :force => true do |t|
    t.string   "title"
    t.string   "text"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relationships", :force => true do |t|
    t.string   "type"
    t.integer  "from_user_id"
    t.integer  "to_user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",                                         :null => false
    t.string   "name"
    t.string   "email",                                            :null => false
    t.string   "hashed_password",                                  :null => false
    t.string   "salt",            :limit => 32
    t.string   "song",            :limit => 64
    t.string   "album",           :limit => 32
    t.string   "picture"
    t.string   "contact"
    t.boolean  "admin?",                        :default => false, :null => false
    t.boolean  "moonwalker?",                   :default => false, :null => false
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.text     "description"
  end

end
