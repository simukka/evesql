class CreateCrpActivities < ActiveRecord::Migration
  def change
    create_table "crpActivities", :primary_key => "activityID", :force => true do |t|
      t.string "activityName", :limit => 100
      t.string "description",  :limit => 1000
    end
  end
end
