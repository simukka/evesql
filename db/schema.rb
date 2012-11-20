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

ActiveRecord::Schema.define(:version => 20121119233758) do

  create_table "crt_certificates", :primary_key => "certificateID", :force => true do |t|
    t.integer  "categoryID"
    t.integer  "classID"
    t.integer  "grade"
    t.integer  "corpID"
    t.integer  "iconID"
    t.string   "description", :limit => 500
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "crt_certificates", ["categoryID"], :name => "crtCertificates_IX_category"
  add_index "crt_certificates", ["classID"], :name => "crtCertificates_IX_class"

  create_table "invtypes", :primary_key => "typeID", :force => true do |t|
    t.integer  "groupID"
    t.string   "typeName",            :limit => 100
    t.string   "description",         :limit => 3000
    t.float    "mass"
    t.float    "volume"
    t.float    "capacity"
    t.integer  "portionSize"
    t.integer  "raceID"
    t.decimal  "basePrice",                           :precision => 19, :scale => 4
    t.integer  "published"
    t.integer  "marketGroupID"
    t.float    "chanceOfDuplicating"
    t.integer  "iconID"
    t.datetime "created_at",                                                         :null => false
    t.datetime "updated_at",                                                         :null => false
  end

  add_index "invtypes", ["groupID"], :name => "invTypes_IX_Group"

  create_table "mapdenormalize", :primary_key => "itemID", :force => true do |t|
    t.integer  "typeID"
    t.integer  "groupID"
    t.integer  "solarSystemID"
    t.integer  "constellationID"
    t.integer  "regionID"
    t.integer  "orbitID"
    t.float    "x"
    t.float    "y"
    t.float    "z"
    t.float    "radius"
    t.string   "itemName",        :limit => 100
    t.float    "security"
    t.integer  "celestialIndex"
    t.integer  "orbitIndex"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "mapdenormalize", ["constellationID"], :name => "mapDenormalize_IX_constellation"
  add_index "mapdenormalize", ["groupID", "constellationID"], :name => "mapDenormalize_IX_groupConstell"
  add_index "mapdenormalize", ["groupID", "regionID"], :name => "mapDenormalize_IX_groupRegion"
  add_index "mapdenormalize", ["groupID", "solarSystemID"], :name => "mapDenormalize_IX_groupSystem"
  add_index "mapdenormalize", ["orbitID"], :name => "mapDenormalize_IX_orbit"
  add_index "mapdenormalize", ["regionID"], :name => "mapDenormalize_IX_region"
  add_index "mapdenormalize", ["solarSystemID"], :name => "mapDenormalize_IX_system"

  create_table "rest_clients", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.string   "api_key"
    t.string   "secret"
    t.boolean  "is_master"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
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
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end