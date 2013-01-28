class CreateInvBlueprinttypes < ActiveRecord::Migration
  def change
    create_table "invBlueprintTypes", :primary_key => "blueprintTypeID", :force => true do |t|
      t.integer "parentBlueprintTypeID"
      t.integer "productTypeID"
      t.integer "productionTime"
      t.integer "techLevel",                :limit => 2
      t.integer "researchProductivityTime"
      t.integer "researchMaterialTime"
      t.integer "researchCopyTime"
      t.integer "researchTechTime"
      t.integer "productivityModifier"
      t.integer "materialModifier",         :limit => 2
      t.integer "wasteFactor",              :limit => 2
      t.integer "maxProductionLimit"
      t.timestamps
    end
  end
end
