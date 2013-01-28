class CreateMapLandmarks < ActiveRecord::Migration
  def change
    create_table "mapLandmarks", :primary_key => "landmarkID", :force => true do |t|
      t.string  "landmarkName", :limit => 100
      t.string  "description",  :limit => 7000
      t.integer "locationID"
      t.float   "x"
      t.float   "y"
      t.float   "z"
      t.float   "radius"
      t.integer "iconID"
      t.integer "importance"
      t.timestamps
    end
  end
end
