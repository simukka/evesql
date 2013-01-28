class CreateCrpNpcCorporationresearchfields < ActiveRecord::Migration
  def change
    create_table "crpNPCCorporationResearchFields", :id => false, :force => true do |t|
      t.integer "skillID",       :null => false
      t.integer "corporationID", :null => false
    end
  end
end
