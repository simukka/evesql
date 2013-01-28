class CreateInvTypematerials < ActiveRecord::Migration
  def change
    create_table "invTypeMaterials", :id => false, :force => true do |t|
      t.integer "typeID",                        :null => false
      t.integer "materialTypeID",                :null => false
      t.integer "quantity",       :default => 0, :null => false
      t.timestamps
    end
  end
end
