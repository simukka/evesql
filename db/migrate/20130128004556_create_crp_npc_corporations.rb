class CreateCrpNpcCorporations < ActiveRecord::Migration
  def change
    create_table "crpNPCCorporations", :primary_key => "corporationID", :force => true do |t|
      t.string  "size",               :limit => 1
      t.string  "extent",             :limit => 1
      t.integer "solarSystemID"
      t.integer "investorID1"
      t.integer "investorShares1"
      t.integer "investorID2"
      t.integer "investorShares2"
      t.integer "investorID3"
      t.integer "investorShares3"
      t.integer "investorID4"
      t.integer "investorShares4"
      t.integer "friendID"
      t.integer "enemyID"
      t.integer "publicShares",       :limit => 8
      t.integer "initialPrice"
      t.float   "minSecurity"
      t.integer "scattered"
      t.integer "fringe"
      t.integer "corridor"
      t.integer "hub"
      t.integer "border"
      t.integer "factionID"
      t.float   "sizeFactor"
      t.integer "stationCount",       :limit => 2
      t.integer "stationSystemCount", :limit => 2
      t.string  "description",        :limit => 4000
      t.integer "iconID"
    end
  end
end
