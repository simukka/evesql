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

ActiveRecord::Schema.define(:version => 20130128013613) do

  create_table "agtAgentTypes", :primary_key => "agentTypeID", :force => true do |t|
    t.string "agentType", :limit => 50
  end

  create_table "agtagents", :primary_key => "agentID", :force => true do |t|
    t.integer "divisionID"
    t.integer "corporationID"
    t.integer "locationID"
    t.integer "level"
    t.integer "quality",       :limit => 2
    t.integer "agentTypeID"
    t.integer "isLocator"
  end

  add_index "agtagents", ["corporationID"], :name => "agtAgents_IX_corporation"
  add_index "agtagents", ["locationID"], :name => "agtAgents_IX_station"

  create_table "agtresearchagents", :id => false, :force => true do |t|
    t.integer "agentID", :null => false
    t.integer "typeID",  :null => false
  end

  add_index "agtresearchagents", ["typeID"], :name => "agtResearchAgents_IX_type"

  create_table "api_keys", :force => true do |t|
    t.string   "access_token"
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "usage_count",  :default => 0
  end

  create_table "chrAncestries", :primary_key => "ancestryID", :force => true do |t|
    t.string  "ancestryName",     :limit => 100
    t.integer "bloodlineID"
    t.string  "description",      :limit => 1000
    t.integer "perception"
    t.integer "willpower"
    t.integer "charisma"
    t.integer "memory"
    t.integer "intelligence"
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
  end

  create_table "chrAttributes", :primary_key => "attributeID", :force => true do |t|
    t.string  "attributeName",    :limit => 100
    t.string  "description",      :limit => 1000
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
    t.string  "notes",            :limit => 500
  end

  create_table "chrBloodlines", :primary_key => "bloodlineID", :force => true do |t|
    t.string  "bloodlineName",          :limit => 100
    t.integer "raceID"
    t.string  "description",            :limit => 1000
    t.string  "maleDescription",        :limit => 1000
    t.string  "femaleDescription",      :limit => 1000
    t.integer "shipTypeID"
    t.integer "corporationID"
    t.integer "perception"
    t.integer "willpower"
    t.integer "charisma"
    t.integer "memory"
    t.integer "intelligence"
    t.integer "iconID"
    t.string  "shortDescription",       :limit => 500
    t.string  "shortMaleDescription",   :limit => 500
    t.string  "shortFemaleDescription", :limit => 500
  end

  create_table "chrFactions", :primary_key => "factionID", :force => true do |t|
    t.string  "factionName",          :limit => 100
    t.string  "description",          :limit => 1000
    t.integer "raceIDs"
    t.integer "solarSystemID"
    t.integer "corporationID"
    t.float   "sizeFactor"
    t.integer "stationCount",         :limit => 2
    t.integer "stationSystemCount",   :limit => 2
    t.integer "militiaCorporationID"
    t.integer "iconID"
  end

  create_table "chrRaces", :primary_key => "raceID", :force => true do |t|
    t.string  "raceName",         :limit => 100
    t.string  "description",      :limit => 1000
    t.integer "iconID"
    t.string  "shortDescription", :limit => 500
  end

  create_table "crpActivities", :primary_key => "activityID", :force => true do |t|
    t.string "activityName", :limit => 100
    t.string "description",  :limit => 1000
  end

  create_table "crpNPCCorporationDivisions", :id => false, :force => true do |t|
    t.integer "corporationID", :null => false
    t.integer "divisionID",    :null => false
    t.integer "size"
  end

  create_table "crpNPCCorporationResearchFields", :id => false, :force => true do |t|
    t.integer "skillID",       :null => false
    t.integer "corporationID", :null => false
  end

  create_table "crpNPCCorporationTrades", :id => false, :force => true do |t|
    t.integer "corporationID", :null => false
    t.integer "typeID",        :null => false
  end

  create_table "crpNPCCorporations", :primary_key => "corporationID", :force => true do |t|
    t.string  "size",               :limit => 1
    t.string  "extent",             :limit => 1
    t.integer "solarSystemID"
    t.integer "investorID1"
    t.integer "investorShares1"
    t.integer "investorID2"
    t.integer "investorShares2"
    t.integer "investorID3"
    t.integer "investorShares3"
    t.integer "investorID4"
    t.integer "investorShares4"
    t.integer "friendID"
    t.integer "enemyID"
    t.integer "publicShares",       :limit => 8
    t.integer "initialPrice"
    t.float   "minSecurity"
    t.integer "scattered"
    t.integer "fringe"
    t.integer "corridor"
    t.integer "hub"
    t.integer "border"
    t.integer "factionID"
    t.float   "sizeFactor"
    t.integer "stationCount",       :limit => 2
    t.integer "stationSystemCount", :limit => 2
    t.string  "description",        :limit => 4000
    t.integer "iconID"
  end

  create_table "crpNPCDivisions", :primary_key => "divisionID", :force => true do |t|
    t.string "divisionName", :limit => 100
    t.string "description",  :limit => 1000
    t.string "leaderType",   :limit => 100
  end

  create_table "crtCategories", :primary_key => "categoryID", :force => true do |t|
    t.string "description",  :limit => 500
    t.string "categoryName", :limit => 256
  end

  create_table "crtClasses", :primary_key => "classID", :force => true do |t|
    t.string "description", :limit => 500
    t.string "className",   :limit => 256
  end

  create_table "crtcertificates", :primary_key => "certificateID", :force => true do |t|
    t.integer "categoryID"
    t.integer "classID"
    t.integer "grade"
    t.integer "corpID"
    t.integer "iconID"
    t.string  "description", :limit => 500
  end

  add_index "crtcertificates", ["categoryID"], :name => "crtCertificates_IX_category"
  add_index "crtcertificates", ["classID"], :name => "crtCertificates_IX_class"

  create_table "crtrecommendations", :primary_key => "recommendationID", :force => true do |t|
    t.integer "shipTypeID"
    t.integer "certificateID"
    t.integer "recommendationLevel", :default => 0, :null => false
  end

  add_index "crtrecommendations", ["certificateID"], :name => "crtRecommendations_IX_certifica"
  add_index "crtrecommendations", ["shipTypeID"], :name => "crtRecommendations_IX_shipType"

  create_table "crtrelationships", :primary_key => "relationshipID", :force => true do |t|
    t.integer "parentID"
    t.integer "parentTypeID"
    t.integer "parentLevel"
    t.integer "childID"
  end

  add_index "crtrelationships", ["childID"], :name => "crtRelationships_IX_child"
  add_index "crtrelationships", ["parentID"], :name => "crtRelationships_IX_parent"

  create_table "dgmAttributeCategories", :primary_key => "categoryID", :force => true do |t|
    t.string "categoryName",        :limit => 50
    t.string "categoryDescription", :limit => 200
  end

  create_table "dgmAttributeTypes", :primary_key => "attributeID", :force => true do |t|
    t.string  "attributeName", :limit => 100
    t.string  "description",   :limit => 1000
    t.integer "iconID"
    t.float   "defaultValue"
    t.integer "published"
    t.string  "displayName",   :limit => 100
    t.integer "unitID"
    t.integer "stackable"
    t.integer "highIsGood"
    t.integer "categoryID"
  end

  create_table "dgmEffects", :primary_key => "effectID", :force => true do |t|
    t.string  "effectName",                     :limit => 400
    t.integer "effectCategory",                 :limit => 2
    t.integer "preExpression"
    t.integer "postExpression"
    t.string  "description",                    :limit => 1000
    t.string  "guid",                           :limit => 60
    t.integer "iconID"
    t.integer "isOffensive"
    t.integer "isAssistance"
    t.integer "durationAttributeID",            :limit => 2
    t.integer "trackingSpeedAttributeID",       :limit => 2
    t.integer "dischargeAttributeID",           :limit => 2
    t.integer "rangeAttributeID",               :limit => 2
    t.integer "falloffAttributeID",             :limit => 2
    t.integer "disallowAutoRepeat"
    t.integer "published"
    t.string  "displayName",                    :limit => 100
    t.integer "isWarpSafe"
    t.integer "rangeChance"
    t.integer "electronicChance"
    t.integer "propulsionChance"
    t.integer "distribution"
    t.string  "sfxName",                        :limit => 20
    t.integer "npcUsageChanceAttributeID",      :limit => 2
    t.integer "npcActivationChanceAttributeID", :limit => 2
    t.integer "fittingUsageChanceAttributeID",  :limit => 2
  end

  create_table "dgmTypeAttributes", :id => false, :force => true do |t|
    t.integer "typeID",                   :null => false
    t.integer "attributeID", :limit => 2, :null => false
    t.integer "valueInt"
    t.float   "valueFloat"
  end

  create_table "dgmTypeEffects", :id => false, :force => true do |t|
    t.integer "typeID",                 :null => false
    t.integer "effectID",  :limit => 2, :null => false
    t.integer "isDefault"
  end

  create_table "eveGraphics", :primary_key => "graphicID", :force => true do |t|
    t.string  "graphicFile", :limit => 500,                :null => false
    t.text    "description"
    t.integer "obsolete",                   :default => 0, :null => false
    t.string  "graphicType", :limit => 100
    t.integer "collidable"
    t.integer "explosionID"
    t.integer "directoryID"
    t.string  "graphicName", :limit => 64,                 :null => false
  end

  create_table "eveIcons", :primary_key => "iconID", :force => true do |t|
    t.string "iconFile",    :limit => 500, :null => false
    t.text   "description"
  end

  create_table "eveUnits", :primary_key => "unitID", :force => true do |t|
    t.string "unitName",    :limit => 100
    t.string "displayName", :limit => 50
    t.string "description", :limit => 1000
  end

  create_table "invBlueprintTypes", :primary_key => "blueprintTypeID", :force => true do |t|
    t.integer  "parentBlueprintTypeID"
    t.integer  "productTypeID"
    t.integer  "productionTime"
    t.integer  "techLevel",                :limit => 2
    t.integer  "researchProductivityTime"
    t.integer  "researchMaterialTime"
    t.integer  "researchCopyTime"
    t.integer  "researchTechTime"
    t.integer  "productivityModifier"
    t.integer  "materialModifier",         :limit => 2
    t.integer  "wasteFactor",              :limit => 2
    t.integer  "maxProductionLimit"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "invCategories", :primary_key => "categoryID", :force => true do |t|
    t.string   "categoryName", :limit => 100
    t.string   "description",  :limit => 3000
    t.integer  "iconID"
    t.integer  "published"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "invControlTowerResourcePurposes", :primary_key => "purpose", :force => true do |t|
    t.string   "purposeText", :limit => 100
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "invControlTowerResources", :id => false, :force => true do |t|
    t.integer  "controlTowerTypeID", :null => false
    t.integer  "resourceTypeID",     :null => false
    t.integer  "purpose"
    t.integer  "quantity"
    t.float    "minSecurityLevel"
    t.integer  "factionID"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "invFlags", :primary_key => "flagID", :force => true do |t|
    t.string   "flagName",   :limit => 200
    t.string   "flagText",   :limit => 100
    t.integer  "orderID"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "invMarketGroups", :primary_key => "marketGroupID", :force => true do |t|
    t.integer  "parentGroupID"
    t.string   "marketGroupName", :limit => 100
    t.string   "description",     :limit => 3000
    t.integer  "iconID"
    t.integer  "hasTypes"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "invMetaGroups", :primary_key => "metaGroupID", :force => true do |t|
    t.string   "metaGroupName", :limit => 100
    t.string   "description",   :limit => 1000
    t.integer  "iconID"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "invMetaTypes", :primary_key => "typeID", :force => true do |t|
    t.integer  "parentTypeID"
    t.integer  "metaGroupID",  :limit => 2
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "invNames", :primary_key => "itemID", :force => true do |t|
    t.string   "itemName",   :limit => 200, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "invPositions", :primary_key => "itemID", :force => true do |t|
    t.float    "x",          :default => 0.0, :null => false
    t.float    "y",          :default => 0.0, :null => false
    t.float    "z",          :default => 0.0, :null => false
    t.float    "yaw"
    t.float    "pitch"
    t.float    "roll"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "invTypeMaterials", :id => false, :force => true do |t|
    t.integer  "typeID",                        :null => false
    t.integer  "materialTypeID",                :null => false
    t.integer  "quantity",       :default => 0, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "invTypeReactions", :id => false, :force => true do |t|
    t.integer  "reactionTypeID",              :null => false
    t.integer  "input",                       :null => false
    t.integer  "typeID",                      :null => false
    t.integer  "quantity",       :limit => 2
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "invcontrabandtypes", :id => false, :force => true do |t|
    t.integer  "factionID",        :null => false
    t.integer  "typeID",           :null => false
    t.float    "standingLoss"
    t.float    "confiscateMinSec"
    t.float    "fineByValue"
    t.float    "attackMinSec"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "invcontrabandtypes", ["typeID"], :name => "invContrabandTypes_IX_type"

  create_table "invgroups", :primary_key => "groupID", :force => true do |t|
    t.integer  "categoryID"
    t.string   "groupName",            :limit => 100
    t.string   "description",          :limit => 3000
    t.integer  "iconID"
    t.integer  "useBasePrice"
    t.integer  "allowManufacture"
    t.integer  "allowRecycler"
    t.integer  "anchored"
    t.integer  "anchorable"
    t.integer  "fittableNonSingleton"
    t.integer  "published"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "invgroups", ["categoryID"], :name => "invGroups_IX_category"

  create_table "invitems", :primary_key => "itemID", :force => true do |t|
    t.integer  "typeID",                  :null => false
    t.integer  "ownerID",                 :null => false
    t.integer  "locationID", :limit => 8, :null => false
    t.integer  "flagID",     :limit => 2, :null => false
    t.integer  "quantity",                :null => false
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "invitems", ["locationID"], :name => "items_IX_Location"
  add_index "invitems", ["ownerID", "locationID"], :name => "items_IX_OwnerLocation"

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

  create_table "invuniquenames", :primary_key => "itemID", :force => true do |t|
    t.string   "itemName",   :limit => 200, :null => false
    t.integer  "groupID"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "invuniquenames", ["groupID", "itemName"], :name => "invUniqueNames_IX_GroupName"
  add_index "invuniquenames", ["itemName"], :name => "invUniqueNames_UQ", :unique => true

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

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "max_usage"
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
