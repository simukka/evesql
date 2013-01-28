class CreateInvCategories < ActiveRecord::Migration
  def change
    create_table "invCategories", :primary_key => "categoryID", :force => true do |t|
      t.string  "categoryName", :limit => 100
      t.string  "description",  :limit => 3000
      t.integer "iconID"
      t.integer "published"
      t.timestamps
    end
  end
end
