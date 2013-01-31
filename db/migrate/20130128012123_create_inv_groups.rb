class CreateInvGroups < ActiveRecord::Migration
  def change
    create_table "invGroups", :primary_key => "groupID", :force => true do |t|
      t.integer "categoryID"
      t.string  "groupName",            :limit => 100
      t.string  "description",          :limit => 3000
      t.integer "iconID"
      t.integer "useBasePrice"
      t.integer "allowManufacture"
      t.integer "allowRecycler"
      t.integer "anchored"
      t.integer "anchorable"
      t.integer "fittableNonSingleton"
      t.integer "published"
      t.timestamps
    end

    add_index "invGroups", ["categoryID"], :name => "invGroups_IX_category"
  end
end
