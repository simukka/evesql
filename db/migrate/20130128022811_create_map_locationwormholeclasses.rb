class CreateMapLocationwormholeclasses < ActiveRecord::Migration
  def change
    create_table "mapLocationWormholeClasses", :primary_key => "locationID", :force => true do |t|
      t.integer "wormholeClassID"
      t.timestamps
    end
  end
end
