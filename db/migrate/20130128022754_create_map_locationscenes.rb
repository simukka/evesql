class CreateMapLocationscenes < ActiveRecord::Migration
  def change
    create_table "mapLocationScenes", :primary_key => "locationID", :force => true do |t|
      t.integer "graphicID"
      t.timestamps
    end
  end
end
