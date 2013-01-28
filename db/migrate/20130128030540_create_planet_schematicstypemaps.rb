class CreatePlanetSchematicstypemaps < ActiveRecord::Migration
  def change
    create_table "planetSchematicsTypeMap", :id => false, :force => true do |t|
      t.integer "schematicID", :limit => 2, :null => false
      t.integer "typeID",                   :null => false
      t.integer "quantity",    :limit => 2
      t.integer "isInput"
      t.timestamps
    end
  end
end
