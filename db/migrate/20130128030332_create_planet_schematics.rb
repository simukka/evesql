class CreatePlanetSchematics < ActiveRecord::Migration
  def change
    create_table "planetSchematics", :primary_key => "schematicID", :force => true do |t|
      t.string  "schematicName"
      t.integer "cycleTime"
      t.timestamps
    end
  end
end
