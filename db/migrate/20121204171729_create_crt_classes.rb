class CreateCrtClasses < ActiveRecord::Migration
  def change
    create_table "crtClasses", :primary_key => "classID", :force => true do |t|
      t.string "description", :limit => 500
      t.string "className",   :limit => 256
    end
  end
end
