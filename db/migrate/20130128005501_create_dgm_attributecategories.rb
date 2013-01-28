class CreateDgmAttributecategories < ActiveRecord::Migration
  def change
    create_table "dgmAttributeCategories", :primary_key => "categoryID", :force => true do |t|
      t.string "categoryName",        :limit => 50
      t.string "categoryDescription", :limit => 200
      t.timestamps
    end
  end
end
