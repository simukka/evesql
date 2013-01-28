class CreateMapUniverses < ActiveRecord::Migration
  def change
    create_table "mapUniverse", :primary_key => "universeID", :force => true do |t|
      t.string "universeName", :limit => 100
      t.float  "x"
      t.float  "y"
      t.float  "z"
      t.float  "xMin"
      t.float  "xMax"
      t.float  "yMin"
      t.float  "yMax"
      t.float  "zMin"
      t.float  "zMax"
      t.float  "radius"
      t.timestamps
    end
  end
end
