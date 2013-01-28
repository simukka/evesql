class CreateChrAttributes < ActiveRecord::Migration
  def change
    create_table "chrAttributes", :primary_key => "attributeID", :force => true do |t|
      t.string  "attributeName",    :limit => 100
      t.string  "description",      :limit => 1000
      t.integer "iconID"
      t.string  "shortDescription", :limit => 500
      t.string  "notes",            :limit => 500
    end
  end
end
