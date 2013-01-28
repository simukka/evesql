class CreateMapCelestialstatistics < ActiveRecord::Migration
  def change
    create_table "mapCelestialStatistics", :primary_key => "celestialID", :force => true do |t|
      t.float   "temperature"
      t.string  "spectralClass",  :limit => 10
      t.float   "luminosity"
      t.float   "age"
      t.float   "life"
      t.float   "orbitRadius"
      t.float   "eccentricity"
      t.float   "massDust"
      t.float   "massGas"
      t.integer "fragmented"
      t.float   "density"
      t.float   "surfaceGravity"
      t.float   "escapeVelocity"
      t.float   "orbitPeriod"
      t.float   "rotationRate"
      t.integer "locked"
      t.float   "pressure"
      t.float   "radius"
      t.float   "mass"
      t.timestamps
    end
  end
end
