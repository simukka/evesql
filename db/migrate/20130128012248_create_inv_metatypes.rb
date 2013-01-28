class CreateInvMetatypes < ActiveRecord::Migration
  def change
    create_table "invMetaTypes", :primary_key => "typeID", :force => true do |t|
      t.integer "parentTypeID"
      t.integer "metaGroupID",  :limit => 2
      t.timestamps
    end
  end
end
