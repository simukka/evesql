class CreateInvTypereactions < ActiveRecord::Migration
  def change
    create_table "invTypeReactions", :id => false, :force => true do |t|
      t.integer "reactionTypeID",              :null => false
      t.integer "input",                       :null => false
      t.integer "typeID",                      :null => false
      t.integer "quantity",       :limit => 2
      t.timestamps
    end
  end
end
