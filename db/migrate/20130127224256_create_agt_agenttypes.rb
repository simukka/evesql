class CreateAgtAgenttypes < ActiveRecord::Migration
  def change
    create_table "agtAgentTypes", :primary_key => "agentTypeID", :force => true do |t|
      t.string "agentType", :limit => 50
    end
  end
end
