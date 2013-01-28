class CreateChrBloodlines < ActiveRecord::Migration
  def change
    create_table "chrBloodlines", :primary_key => "bloodlineID", :force => true do |t|
      t.string  "bloodlineName",          :limit => 100
      t.integer "raceID"
      t.string  "description",            :limit => 1000
      t.string  "maleDescription",        :limit => 1000
      t.string  "femaleDescription",      :limit => 1000
      t.integer "shipTypeID"
      t.integer "corporationID"
      t.integer "perception"
      t.integer "willpower"
      t.integer "charisma"
      t.integer "memory"
      t.integer "intelligence"
      t.integer "iconID"
      t.string  "shortDescription",       :limit => 500
      t.string  "shortMaleDescription",   :limit => 500
      t.string  "shortFemaleDescription", :limit => 500
      t.timestamps
    end
  end
end
