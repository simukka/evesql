class DropRestClient < ActiveRecord::Migration
  def up
   drop_table :rest_clients
  end
end
