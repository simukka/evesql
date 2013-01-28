class CreateMapSolarsystems < ActiveRecord::Migration
  def change
    create_table "mapSolarSystems", :primary_key => "solarSystemID", :force => true do |t|
      t.integer "regionID"
      t.integer "constellationID"
      t.string  "solarSystemName", :limit => 100
      t.float   "x"
      t.float   "y"
      t.float   "z"
      t.float   "xMin"
      t.float   "xMax"
      t.float   "yMin"
      t.float   "yMax"
      t.float   "zMin"
      t.float   "zMax"
      t.float   "luminosity"
      t.integer "border"
      t.integer "fringe"
      t.integer "corridor"
      t.integer "hub"
      t.integer "international"
      t.integer "regional"
      t.integer "constellation"
      t.float   "security"
      t.integer "factionID"
      t.float   "radius"
      t.integer "sunTypeID"
      t.string  "securityClass",   :limit => 2
      t.timestamps
    end

    add_index "mapsolarsystems", ["constellationID"], :name => "mapSolarSystems_IX_constellation"
    add_index "mapsolarsystems", ["regionID"], :name => "mapSolarSystems_IX_region"
    add_index "mapsolarsystems", ["security"], :name => "mapSolarSystems_IX_security"
  end
end
