class MapDenormalize < ActiveRecord::Base
  self.table_name = "mapdenormalize"
  self.primary_key = "itemID"
  # attr_accessible :title, :body
end
