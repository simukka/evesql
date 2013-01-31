class CreateInvUniquenames < ActiveRecord::Migration
  def change
    create_table "invUniqueNames", :primary_key => "itemID", :force => true do |t|
      t.string  "itemName", :limit => 200, :null => false
      t.integer "groupID"
      t.timestamps
    end

    add_index "invUniqueNames", ["groupID", "itemName"], :name => "invUniqueNames_IX_GroupName"
    add_index "invUniqueNames", ["itemName"], :name => "invUniqueNames_UQ", :unique => true
  end
end
