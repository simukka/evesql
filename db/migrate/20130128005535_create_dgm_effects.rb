class CreateDgmEffects < ActiveRecord::Migration
  def change
    create_table "dgmEffects", :primary_key => "effectID", :force => true do |t|
      t.string  "effectName",                     :limit => 400
      t.integer "effectCategory",                 :limit => 2
      t.integer "preExpression"
      t.integer "postExpression"
      t.string  "description",                    :limit => 1000
      t.string  "guid",                           :limit => 60
      t.integer "iconID"
      t.integer "isOffensive"
      t.integer "isAssistance"
      t.integer "durationAttributeID",            :limit => 2
      t.integer "trackingSpeedAttributeID",       :limit => 2
      t.integer "dischargeAttributeID",           :limit => 2
      t.integer "rangeAttributeID",               :limit => 2
      t.integer "falloffAttributeID",             :limit => 2
      t.integer "disallowAutoRepeat"
      t.integer "published"
      t.string  "displayName",                    :limit => 100
      t.integer "isWarpSafe"
      t.integer "rangeChance"
      t.integer "electronicChance"
      t.integer "propulsionChance"
      t.integer "distribution"
      t.string  "sfxName",                        :limit => 20
      t.integer "npcUsageChanceAttributeID",      :limit => 2
      t.integer "npcActivationChanceAttributeID", :limit => 2
      t.integer "fittingUsageChanceAttributeID",  :limit => 2
    end
  end
end
