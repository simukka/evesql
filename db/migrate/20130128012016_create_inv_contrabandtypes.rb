class CreateInvContrabandtypes < ActiveRecord::Migration
  def change
    create_table "invContrabandTypes", :id => false, :force => true do |t|
      t.integer "factionID",        :null => false
      t.integer "typeID",           :null => false
      t.float   "standingLoss"
      t.float   "confiscateMinSec"
      t.float   "fineByValue"
      t.float   "attackMinSec"
      t.timestamps
    end

    add_index "invcontrabandtypes", ["typeID"], :name => "invContrabandTypes_IX_type"
  end
end
