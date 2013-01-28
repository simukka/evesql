class CreateDgmTypeeffects < ActiveRecord::Migration
  def change
    create_table "dgmTypeEffects", :id => false, :force => true do |t|
      t.integer "typeID",                 :null => false
      t.integer "effectID",  :limit => 2, :null => false
      t.integer "isDefault"
    end
  end
end
