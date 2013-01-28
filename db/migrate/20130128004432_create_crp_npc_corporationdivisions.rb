class CreateCrpNpcCorporationdivisions < ActiveRecord::Migration
  def change
    create_table "crpNPCCorporationDivisions", :id => false, :force => true do |t|
      t.integer "corporationID", :null => false
      t.integer "divisionID",    :null => false
      t.integer "size"
      t.timestamps
    end
  end
end
