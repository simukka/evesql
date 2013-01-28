class CreatePlanetSchematicspinmap < ActiveRecord::Migration
  def change
    create_table "planetSchematicsPinMap", :id => false, :force => true do |t|
      t.integer "schematicID", :limit => 2, :null => false
      t.integer "pinTypeID",                :null => false
      t.timestamps
    end
  end
end
