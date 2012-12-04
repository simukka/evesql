class CreateCrtRelationships < ActiveRecord::Migration
  def change
    create_table "crtRelationships", :primary_key => "relationshipID", :force => true do |t|
      t.integer "parentID"
      t.integer "parentTypeID"
      t.integer "parentLevel"
      t.integer "childID"
    end

    add_index "crtrelationships", ["childID"], :name => "crtRelationships_IX_child"
    add_index "crtrelationships", ["parentID"], :name => "crtRelationships_IX_parent"
  end
end
