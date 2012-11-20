class InvTypes < ActiveRecord::Base
  set_table_name "invTypes"
  self.primary_key = "typeID"
  # attr_accessible :title, :body
end
