class CreateChrAncestries < ActiveRecord::Migration
  def change
    create_table "chrAncestries", :primary_key => "ancestryID", :force => true do |t|
      t.string  "ancestryName",     :limit => 100
      t.integer "bloodlineID"
      t.string  "description",      :limit => 1000
      t.integer "perception"
      t.integer "willpower"
      t.integer "charisma"
      t.integer "memory"
      t.integer "intelligence"
      t.integer "iconID"
      t.string  "shortDescription", :limit => 500
    end
  end
end
