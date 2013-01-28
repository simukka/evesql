class CreateEveGraphics < ActiveRecord::Migration
  def change
    create_table "eveGraphics", :primary_key => "graphicID", :force => true do |t|
      t.string  "graphicFile", :limit => 500,                :null => false
      t.text    "description"
      t.integer "obsolete",                   :default => 0, :null => false
      t.string  "graphicType", :limit => 100
      t.integer "collidable"
      t.integer "explosionID"
      t.integer "directoryID"
      t.string  "graphicName", :limit => 64,                 :null => false
      t.timestamps
    end
  end
end
