class CreateEveIcons < ActiveRecord::Migration
  def change
    create_table "eveIcons", :primary_key => "iconID", :force => true do |t|
      t.string "iconFile",    :limit => 500, :null => false
      t.text   "description"
      t.timestamps
    end
  end
end
