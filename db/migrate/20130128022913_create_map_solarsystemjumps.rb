class CreateMapSolarsystemjumps < ActiveRecord::Migration
  def change
    create_table "mapSolarSystemJumps", :id => false, :force => true do |t|
      t.integer "fromRegionID"
      t.integer "fromConstellationID"
      t.integer "fromSolarSystemID",   :null => false
      t.integer "toSolarSystemID",     :null => false
      t.integer "toConstellationID"
      t.integer "toRegionID"
      t.timestamps
    end

    add_index "mapSolarSystemJumps", ["fromConstellationID"], :name => "mapSolarSystemJumps_IX_fromCons"
    add_index "mapSolarSystemJumps", ["fromRegionID"], :name => "mapSolarSystemJumps_IX_fromRegi"
  end
end
