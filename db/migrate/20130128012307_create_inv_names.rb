class CreateInvNames < ActiveRecord::Migration
  def change
    create_table "invNames", :primary_key => "itemID", :force => true do |t|
      t.string "itemName", :limit => 200, :null => false
      t.timestamps
    end
  end
end
