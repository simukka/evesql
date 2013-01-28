class CreateMapRegionjumps < ActiveRecord::Migration
  def change
    create_table "mapRegionJumps", :id => false, :force => true do |t|
      t.integer "fromRegionID", :null => false
      t.integer "toRegionID",   :null => false
      t.timestamps
    end
  end
end
