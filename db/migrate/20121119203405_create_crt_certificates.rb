class CreateCrtCertificates < ActiveRecord::Migration
  def change
    create_table "crt_certificates", :primary_key => "certificateID", :force => true do |t|
      t.integer "categoryID"
      t.integer "classID"
      t.integer "grade"
      t.integer "corpID"
      t.integer "iconID"
      t.string  "description", :limit => 500
      t.timestamps
    end

    add_index "crt_certificates", ["categoryID"], :name => "crtCertificates_IX_category"
    add_index "crt_certificates", ["classID"], :name => "crtCertificates_IX_class"
  end
end
