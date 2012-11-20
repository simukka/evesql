class CreateInvTypes < ActiveRecord::Migration
  def change
    create_table "invTypes", :primary_key => "typeID", :force => true do |t|
      t.integer "groupID"
      t.string  "typeName",            :limit => 100
      t.string  "description",         :limit => 3000
      t.float   "mass"
      t.float   "volume"
      t.float   "capacity"
      t.integer "portionSize"
      t.integer "raceID"
      t.decimal "basePrice",                           :precision => 19, :scale => 4
      t.integer "published"
      t.integer "marketGroupID"
      t.float   "chanceOfDuplicating"
      t.integer "iconID"
      t.timestamps
    end

    add_index "invTypes", ["groupID"], :name => "invTypes_IX_Group"
  end
end
