class CreateStaOperations < ActiveRecord::Migration
  def change
    create_table "staOperations", :primary_key => "operationID", :force => true do |t|
      t.integer "activityID"
      t.string  "operationName",         :limit => 100
      t.string  "description",           :limit => 1000
      t.integer "fringe"
      t.integer "corridor"
      t.integer "hub"
      t.integer "border"
      t.integer "ratio"
      t.integer "caldariStationTypeID"
      t.integer "minmatarStationTypeID"
      t.integer "amarrStationTypeID"
      t.integer "gallenteStationTypeID"
      t.integer "joveStationTypeID"
      t.timestamps
    end
  end
end
