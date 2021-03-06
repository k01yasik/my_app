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

ActiveRecord::Schema.define(:version => 20130527163130) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.boolean  "admin"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "cars", :force => true do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "nauto"
    t.integer  "owner_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cars", ["owner_id"], :name => "index_cars_on_owner_id"

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.string   "fam"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "postis", :force => true do |t|
    t.string "opsname",  :limit => 60
    t.string "opstype",  :limit => 50
    t.string "opssubm",  :limit => 6
    t.string "region",   :limit => 60
    t.string "autonom",  :limit => 60
    t.string "area",     :limit => 60
    t.string "city",     :limit => 60
    t.string "city_1",   :limit => 60
    t.string "actdate",  :limit => 40
    t.string "indexold", :limit => 6
  end

end
