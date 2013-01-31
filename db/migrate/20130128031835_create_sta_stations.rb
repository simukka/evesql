class CreateStaStations < ActiveRecord::Migration
  def change
    create_table "staStations", :primary_key => "stationID", :force => true do |t|
      t.integer "security",                 :limit => 2
      t.float   "dockingCostPerVolume"
      t.float   "maxShipVolumeDockable"
      t.integer "officeRentalCost"
      t.integer "operationID"
      t.integer "stationTypeID"
      t.integer "corporationID"
      t.integer "solarSystemID"
      t.integer "constellationID"
      t.integer "regionID"
      t.string  "stationName",              :limit => 100
      t.float   "x"
      t.float   "y"
      t.float   "z"
      t.float   "reprocessingEfficiency"
      t.float   "reprocessingStationsTake"
      t.integer "reprocessingHangarFlag"
      t.timestamps
    end

    add_index "staStations", ["constellationID"], :name => "staStations_IX_constellation"
    add_index "staStations", ["corporationID"], :name => "staStations_IX_corporation"
    add_index "staStations", ["operationID"], :name => "staStations_IX_operation"
    add_index "staStations", ["regionID"], :name => "staStations_IX_region"
    add_index "staStations", ["solarSystemID"], :name => "staStations_IX_system"
    add_index "staStations", ["stationTypeID"], :name => "staStations_IX_type"
  end
end
