class CreateMapConstellationjumps < ActiveRecord::Migration
  def change
    create_table "mapConstellationJumps", :id => false, :force => true do |t|
      t.integer "fromRegionID"
      t.integer "fromConstellationID", :null => false
      t.integer "toConstellationID",   :null => false
      t.integer "toRegionID"
      t.timestamps
    end

    add_index "mapConstellationJumps", ["fromRegionID"], :name => "mapConstellationJumps_IX_fromRe"
  end
end
