class CreateDgmAttributetypes < ActiveRecord::Migration
  def change
    create_table "dgmAttributeTypes", :primary_key => "attributeID", :force => true do |t|
      t.string  "attributeName", :limit => 100
      t.string  "description",   :limit => 1000
      t.integer "iconID"
      t.float   "defaultValue"
      t.integer "published"
      t.string  "displayName",   :limit => 100
      t.integer "unitID"
      t.integer "stackable"
      t.integer "highIsGood"
      t.integer "categoryID"
      t.timestamps
    end
  end
end
