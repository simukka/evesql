class CreateInvFlags < ActiveRecord::Migration
  def change
   create_table "invFlags", :primary_key => "flagID", :force => true do |t|
     t.string  "flagName", :limit => 200
     t.string  "flagText", :limit => 100
     t.integer "orderID"
     t.timestamps
   end
  end
end
