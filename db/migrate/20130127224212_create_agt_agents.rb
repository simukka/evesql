class CreateAgtAgents < ActiveRecord::Migration
  def change
    create_table "agtAgents", :primary_key => "agentID", :force => true do |t|
      t.integer "divisionID"
      t.integer "corporationID"
      t.integer "locationID"
      t.integer "level"
      t.integer "quality",       :limit => 2
      t.integer "agentTypeID"
      t.integer "isLocator"
      t.timestamps
    end

    add_index "agtagents", ["corporationID"], :name => "agtAgents_IX_corporation"
    add_index "agtagents", ["locationID"], :name => "agtAgents_IX_station"
  end
end
