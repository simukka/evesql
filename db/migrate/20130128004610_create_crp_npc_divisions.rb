class CreateCrpNpcDivisions < ActiveRecord::Migration
  def change
    create_table "crpNPCDivisions", :primary_key => "divisionID", :force => true do |t|
      t.string "divisionName", :limit => 100
      t.string "description",  :limit => 1000
      t.string "leaderType",   :limit => 100
    end
  end
end
