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

ActiveRecord::Schema.define(:version => 20130511151354) do

  create_table "clasifications", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "emergency_corporations", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "phone"
    t.string   "location"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "emergencyrequests", :force => true do |t|
    t.integer  "iduser"
    t.integer  "idcorporation"
    t.date     "dateRequest"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "images", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "places_interest_id"
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
  end

  create_table "places_interests", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "horary"
    t.text     "description"
    t.string   "popularity"
    t.integer  "clasification_id"
    t.string   "urlImage"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.boolean  "confirm",          :default => false
  end

  create_table "preferences", :force => true do |t|
    t.integer  "iduser"
    t.integer  "idsite"
    t.date     "dateRegister"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_visits", :force => true do |t|
    t.integer  "user_id"
    t.integer  "places_interest_id"
    t.date     "dateVisit"
    t.integer  "ratig"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "role"

  end

end
