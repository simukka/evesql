class CreateMapConstellations < ActiveRecord::Migration
  def change
    create_table "mapConstellations", :primary_key => "constellationID", :force => true do |t|
      t.integer "regionID"
      t.string  "constellationName", :limit => 100
      t.float   "x"
      t.float   "y"
      t.float   "z"
      t.float   "xMin"
      t.float   "xMax"
      t.float   "yMin"
      t.float   "yMax"
      t.float   "zMin"
      t.float   "zMax"
      t.integer "factionID"
      t.float   "radius"
      t.timestamps
    end

    add_index "mapconstellations", ["regionID"], :name => "mapConstellations_IX_region"
  end
end
