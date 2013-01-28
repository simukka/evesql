class CreateInvControltowerresourcepurposes < ActiveRecord::Migration
  def change
    create_table "invControlTowerResourcePurposes", :primary_key => "purpose", :force => true do |t|
      t.string "purposeText", :limit => 100
      t.timestamps
    end
  end
end
