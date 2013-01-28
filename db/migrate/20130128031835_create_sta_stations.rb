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

    add_index "stastations", ["constellationID"], :name => "staStations_IX_constellation"
    add_index "stastations", ["corporationID"], :name => "staStations_IX_corporation"
    add_index "stastations", ["operationID"], :name => "staStations_IX_operation"
    add_index "stastations", ["regionID"], :name => "staStations_IX_region"
    add_index "stastations", ["solarSystemID"], :name => "staStations_IX_system"
    add_index "stastations", ["stationTypeID"], :name => "staStations_IX_type"
  end
end
