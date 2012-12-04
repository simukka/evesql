class CreateCrtCertificates < ActiveRecord::Migration
  def change
    create_table "crtCertificates", :primary_key => "certificateID", :force => true do |t|
      t.integer "categoryID"
      t.integer "classID"
      t.integer "grade"
      t.integer "corpID"
      t.integer "iconID"
      t.string  "description", :limit => 500
    end

    add_index "crtCertificates", ["categoryID"], :name => "crtCertificates_IX_category"
    add_index "crtCertificates", ["classID"], :name => "crtCertificates_IX_class"
  end
end
