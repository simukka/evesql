class CreateDgmTypeattributes < ActiveRecord::Migration
  def change
    create_table "dgmTypeAttributes", :id => false, :force => true do |t|
      t.integer "typeID",                   :null => false
      t.integer "attributeID", :limit => 2, :null => false
      t.integer "valueInt"
      t.float   "valueFloat"
    end
  end
end
