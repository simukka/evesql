class CreateInvMetagroups < ActiveRecord::Migration
  def change
    create_table "invMetaGroups", :primary_key => "metaGroupID", :force => true do |t|
      t.string  "metaGroupName", :limit => 100
      t.string  "description",   :limit => 1000
      t.integer "iconID"
      t.timestamps
    end
  end
end
