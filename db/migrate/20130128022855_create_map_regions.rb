class CreateMapRegions < ActiveRecord::Migration
  def change
    create_table "mapRegions", :primary_key => "regionID", :force => true do |t|
      t.string  "regionName", :limit => 100
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
  end
end
