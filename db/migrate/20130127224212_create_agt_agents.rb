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

    add_index "agtAgents", ["corporationID"], :name => "agtAgents_IX_corporation"
    add_index "agtAgents", ["locationID"], :name => "agtAgents_IX_station"
  end
end
