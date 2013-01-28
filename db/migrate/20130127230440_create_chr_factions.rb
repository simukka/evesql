class CreateChrFactions < ActiveRecord::Migration
  def change
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
  end
end
