class CreateAgtResearchagents < ActiveRecord::Migration
  def change
    create_table "agtResearchAgents", :id => false, :force => true do |t|
      t.integer "agentID", :null => false
      t.integer "typeID",  :null => false
    end

    add_index "agtresearchagents", ["typeID"], :name => "agtResearchAgents_IX_type"
  end
end
