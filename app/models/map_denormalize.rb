class MapDenormalize < ActiveRecord::Base
  set_table_name  "mapdenormalize"
  self.primary_key = "itemID"
  # attr_accessible :title, :body
end
