class CreateEveUnits < ActiveRecord::Migration
  def change
    create_table "eveUnits", :primary_key => "unitID", :force => true do |t|
      t.string "unitName",    :limit => 100
      t.string "displayName", :limit => 50
      t.string "description", :limit => 1000
      t.timestamps
    end
  end
end
