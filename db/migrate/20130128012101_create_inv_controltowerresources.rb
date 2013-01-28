class CreateInvControltowerresources < ActiveRecord::Migration
  def change
    create_table "invControlTowerResources", :id => false, :force => true do |t|
      t.integer "controlTowerTypeID", :null => false
      t.integer "resourceTypeID",     :null => false
      t.integer "purpose"
      t.integer "quantity"
      t.float   "minSecurityLevel"
      t.integer "factionID"
      t.timestamps
    end
  end
end
