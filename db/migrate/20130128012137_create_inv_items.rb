class CreateInvItems < ActiveRecord::Migration
  def change
    create_table "invItems", :primary_key => "itemID", :force => true do |t|
      t.integer "typeID",                  :null => false
      t.integer "ownerID",                 :null => false
      t.integer "locationID", :limit => 8, :null => false
      t.integer "flagID",     :limit => 2, :null => false
      t.integer "quantity",                :null => false
      t.timestamps
    end

    add_index "invItems", ["locationID"], :name => "items_IX_Location"
    add_index "invItems", ["ownerID", "locationID"], :name => "items_IX_OwnerLocation"
  end
end
