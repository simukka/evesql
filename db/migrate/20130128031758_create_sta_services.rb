class CreateStaServices < ActiveRecord::Migration
  def change
    create_table "staServices", :primary_key => "serviceID", :force => true do |t|
      t.string "serviceName", :limit => 100
      t.string "description", :limit => 1000
      t.timestamps
    end
  end
end
