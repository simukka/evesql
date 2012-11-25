class RemoveAuthenticationTokenFromUsers < ActiveRecord::Migration
  def up
   remove_column :users, :authentication_token
  end
end
