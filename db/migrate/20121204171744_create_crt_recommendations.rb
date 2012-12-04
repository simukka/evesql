class CreateCrtRecommendations < ActiveRecord::Migration
  def change
    create_table "crtRecommendations", :primary_key => "recommendationID", :force => true do |t|
      t.integer "shipTypeID"
      t.integer "certificateID"
      t.integer "recommendationLevel", :default => 0, :null => false
    end

    add_index "crtrecommendations", ["certificateID"], :name => "crtRecommendations_IX_certifica"
    add_index "crtrecommendations", ["shipTypeID"], :name => "crtRecommendations_IX_shipType"
  end
end
