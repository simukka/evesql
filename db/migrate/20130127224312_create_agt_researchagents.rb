class CreateAgtResearchagents < ActiveRecord::Migration
  def change
    create_table "agtResearchAgents", :id => false, :force => true do |t|
      t.integer "agentID", :null => false
      t.integer "typeID",  :null => false
      t.timestamps
    end

    add_index "agtResearchAgents", ["typeID"], :name => "agtResearchAgents_IX_type"
  end
end
