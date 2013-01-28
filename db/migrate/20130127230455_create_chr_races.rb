class CreateChrRaces < ActiveRecord::Migration
  def change
    create_table "chrRaces", :primary_key => "raceID", :force => true do |t|
      t.string  "raceName",         :limit => 100
      t.string  "description",      :limit => 1000
      t.integer "iconID"
      t.string  "shortDescription", :limit => 500
    end
  end
end
