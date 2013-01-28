class CreateInvPositions < ActiveRecord::Migration
  def change
    create_table "invPositions", :primary_key => "itemID", :force => true do |t|
      t.float "x",     :default => 0.0, :null => false
      t.float "y",     :default => 0.0, :null => false
      t.float "z",     :default => 0.0, :null => false
      t.float "yaw"
      t.float "pitch"
      t.float "roll"
      t.timestamps
    end
  end
end
