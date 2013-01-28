class CreateMapJumps < ActiveRecord::Migration
  def change
    create_table "mapJumps", :primary_key => "stargateID", :force => true do |t|
      t.integer "celestialID"
      t.timestamps
    end
  end
end
