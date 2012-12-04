class CreateCrtCategories < ActiveRecord::Migration
  def change
    create_table "crtCategories", :primary_key => "categoryID", :force => true do |t|
      t.string "description",  :limit => 500
      t.string "categoryName", :limit => 256
    end
  end
end
