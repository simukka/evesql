class CreateStaStationtypes < ActiveRecord::Migration
  def change
    create_table "staStationTypes", :primary_key => "stationTypeID", :force => true do |t|
      t.float   "dockEntryX"
      t.float   "dockEntryY"
      t.float   "dockEntryZ"
      t.float   "dockOrientationX"
      t.float   "dockOrientationY"
      t.float   "dockOrientationZ"
      t.integer "operationID"
      t.integer "officeSlots"
      t.float   "reprocessingEfficiency"
      t.integer "conquerable"
      t.timestamps
    end
  end
end
