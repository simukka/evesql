class CreateInvMarketgroups < ActiveRecord::Migration
  def change
    create_table "invMarketGroups", :primary_key => "marketGroupID", :force => true do |t|
      t.integer "parentGroupID"
      t.string  "marketGroupName", :limit => 100
      t.string  "description",     :limit => 3000
      t.integer "iconID"
      t.integer "hasTypes"
      t.timestamps
    end
  end
end
