class CreateMapDenormalizes < ActiveRecord::Migration
  def change
    create_table "mapDenormalize", :primary_key => "itemID", :force => true do |t|
      t.integer "typeID"
      t.integer "groupID"
      t.integer "solarSystemID"
      t.integer "constellationID"
      t.integer "regionID"
      t.integer "orbitID"
      t.float   "x"
      t.float   "y"
      t.float   "z"
      t.float   "radius"
      t.string  "itemName",        :limit => 100
      t.float   "security"
      t.integer "celestialIndex"
      t.integer "orbitIndex"
      t.timestamps
    end

    add_index "mapDenormalize", ["constellationID"], :name => "mapDenormalize_IX_constellation"
    add_index "mapDenormalize", ["groupID", "constellationID"], :name => "mapDenormalize_IX_groupConstell"
    add_index "mapDenormalize", ["groupID", "regionID"], :name => "mapDenormalize_IX_groupRegion"
    add_index "mapDenormalize", ["groupID", "solarSystemID"], :name => "mapDenormalize_IX_groupSystem"
    add_index "mapDenormalize", ["orbitID"], :name => "mapDenormalize_IX_orbit"
    add_index "mapDenormalize", ["regionID"], :name => "mapDenormalize_IX_region"
    add_index "mapDenormalize", ["solarSystemID"], :name => "mapDenormalize_IX_system"
  end
end
